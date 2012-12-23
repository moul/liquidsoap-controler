# Register an endpoint to create a output.ao(source).
# @param ~register HTTP controler register handler
def controler.json.endpoints.output.ao(~register, ~remove) =
  def output(~fallible,source,options) =
    output.ao(fallible=fallible,source)
  end

  controler.json.endpoints.output_source(register=register, remove=remove, "ao", output) 
end

controler.json.endpoints.register(controler.json.endpoints.output.ao)

# Register an endpoint to create a output.dummy(source).
# @param ~register HTTP controler register handler
def controler.json.endpoints.output.dummy(~register, ~remove) =
  def output(~fallible,source,options) =
    output.dummy(fallible=fallible,source)
  end

  controler.json.endpoints.output_source(register=register, remove=remove, "dummy", output)
end

controler.json.endpoints.register(controler.json.endpoints.output.dummy)


def controler.json.endpoints.output.icecast.mp3(~register, ~remove, ~bitrate, ~encoder) =
  def output(~fallible,source,options) =
    output.icecast(encoder, fallible=fallible, mount="/test.mp3", source)
  end

  controler.json.endpoints.output_source(register=register, remove=remove, "icecast.mp3.#{bitrate}", output)
end

# http://en.wikipedia.org/wiki/Mp3#Bit_rate
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=8,   encoder=%mp3(bitrate=8)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=16,  encoder=%mp3(bitrate=16)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=24,  encoder=%mp3(bitrate=24)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=32,  encoder=%mp3(bitrate=32)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=40,  encoder=%mp3(bitrate=40)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=48,  encoder=%mp3(bitrate=48)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=56,  encoder=%mp3(bitrate=56)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=64,  encoder=%mp3(bitrate=64)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=80,  encoder=%mp3(bitrate=80)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=96,  encoder=%mp3(bitrate=96)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=112, encoder=%mp3(bitrate=112)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=128, encoder=%mp3(bitrate=128)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=144, encoder=%mp3(bitrate=144)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=160, encoder=%mp3(bitrate=160)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=192, encoder=%mp3(bitrate=192)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=224, encoder=%mp3(bitrate=224)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=256, encoder=%mp3(bitrate=256)))
controler.json.endpoints.register(controler.json.endpoints.output.icecast.mp3(bitrate=320, encoder=%mp3(bitrate=320)))


