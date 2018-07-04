private
fgetc: stream
	"Initiate pipe streams to or from a process "
	 
	 ^self ffiCall: #(int* fgetc(ExternalAddress* stream)) 
			 module: LibC
			 