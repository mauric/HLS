set language "C"
set globalAPint ""
set globalVariable ""
set staticVariable ""
set moduleName "gaussian"
set rawDecl [list "void" "gaussian\(unsigned short in\[1080\]\[1920\], unsigned short out\[1080\]\[1920\]\)"]
set argAPint ""
set returnAPint ""
set portList ""
set portName0 "in"
set portInterface0 "memory"
set portData0 "unsigned short"
set portPointer0 "0"
set portArrayDim0 [list 1080 1920]
set portConst0 "0"
set portVolatile0 "0"
set portArrayOpt0 ""
set port0 [list $portName0 $portInterface0 $portData0 $portPointer0 $portArrayDim0 $portConst0 $portVolatile0 $portArrayOpt0]
lappend portList $port0
set portName1 "out"
set portInterface1 "memory"
set portData1 "unsigned short"
set portPointer1 "0"
set portArrayDim1 [list 1080 1920]
set portConst1 "0"
set portVolatile1 "0"
set portArrayOpt1 ""
set port1 [list $portName1 $portInterface1 $portData1 $portPointer1 $portArrayDim1 $portConst1 $portVolatile1 $portArrayOpt1]
lappend portList $port1
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPint $returnAPint $dataPackList]
set hasCPPAPInt 0
set hasCPPAPFix 0
set hasSCFix 0
set hasCPPComplex 0
set hasCBool 0
set isTemplateTop 0
set useIntT 0
