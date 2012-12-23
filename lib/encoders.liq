

def controler.encoders.mp3(options) =
  # http://en.wikipedia.org/wiki/Mp3#Bit_rate
  # TODO: do the same with samplerate (bash script ?)
  if    options["encoder_bitrate"] == "8"   then %mp3(bitrate=8)
  elsif options["encoder_bitrate"] == "16"  then %mp3(bitrate=16)
  elsif options["encoder_bitrate"] == "32"  then %mp3(bitrate=32)
  elsif options["encoder_bitrate"] == "40"  then %mp3(bitrate=40)
  elsif options["encoder_bitrate"] == "48"  then %mp3(bitrate=48)
  elsif options["encoder_bitrate"] == "56"  then %mp3(bitrate=56)
  elsif options["encoder_bitrate"] == "64"  then %mp3(bitrate=64)
  elsif options["encoder_bitrate"] == "80"  then %mp3(bitrate=80)
  elsif options["encoder_bitrate"] == "96"  then %mp3(bitrate=96)
  elsif options["encoder_bitrate"] == "112" then %mp3(bitrate=112)
  elsif options["encoder_bitrate"] == "128" then %mp3(bitrate=128)
  elsif options["encoder_bitrate"] == "144" then %mp3(bitrate=144)
  elsif options["encoder_bitrate"] == "160" then %mp3(bitrate=160)
  elsif options["encoder_bitrate"] == "192" then %mp3(bitrate=192)
  elsif options["encoder_bitrate"] == "224" then %mp3(bitrate=224)
  elsif options["encoder_bitrate"] == "256" then %mp3(bitrate=256)
  elsif options["encoder_bitrate"] == "320" then %mp3(bitrate=320)
  else                                           %mp3(bitrate=128)
  end
end

def controler.encoders.vorbis(options) =
  %vorbis()
end

def controler.encoders.aacplus(options) =
  %aacplus()
end

def controler.encoders.default(options) =
  %mp3()
end

def controler.encoders.create(options) =
  type = options["encoder_type"]
  if    type == "mp3"     then    controler.encoders.mp3(options)
  elsif type == "vorbis"  then    controler.encoders.vorbis(options)
  elsif type == "aacplus" then    controler.encoders.aacplus(options)
  else                            controler.encoders.default(options)
  end
end
