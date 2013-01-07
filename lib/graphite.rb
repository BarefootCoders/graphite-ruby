require "socket"

class Graphite
  def initialize(token, host, port = 2003)
    @token, @host, @port = token, host, port
  end

  def measure(stat, value = nil)
    if block_given?
      start = Time.now
      yield
      value = ((Time.now - start) * 1000).round
    end

    send_to_socket("#{stat} #{value}") unless value.nil?
  end

  private

  def send_to_socket(message)
    return if defined?(Rails) && !Rails.env.production?

    socket.send("#{@token}.#{message}", 0, @host, @port) rescue nil
  end

  def socket
    @socket ||= UDPSocket.new
  end
end
