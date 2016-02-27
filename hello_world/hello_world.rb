# HelloWorld class
class HelloWorld
  def self.hello(name = '')
    if name == ''
      'Hello, World!'
    else
      "Hello, #{name}!"
    end
  end
end
