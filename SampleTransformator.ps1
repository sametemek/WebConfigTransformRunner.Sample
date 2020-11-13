$webConfigTransformator = "./WebConfigTransformRunner/WebConfigTransformRunner.exe"

$targetWebConfigFile = "./web.config" # Değiştirmek istediğimiz web.config dosyası.
$sourceWebConfigFile = "./web.source.config" # Transform etmek istediğimiz değerleri içeren web.config dosyası.
$outputWebConfigFile = "./web.output.config" # Çıktı web.config dosyası.

$transformArguments = @("""" + $targetWebConfigFile + """",`
                                """" + $sourceWebConfigFile + """",`
                                """" + $outputWebConfigFile + """")
								
$transformationProcess = Start-Process -FilePath $webConfigTransformator -ArgumentList $transformArguments -Wait -PassThru -NoNewWindow