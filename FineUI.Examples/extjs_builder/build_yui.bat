

mkdir ..\extjs
mkdir ..\extjs\res
mkdir ..\extjs\lang
mkdir ..\extjs\res\images
mkdir ..\extjs\res\images\gray
mkdir ..\extjs\res\images\default
mkdir ..\extjs\res\images\access
mkdir ..\extjs\res\css



xcopy extjs_source_all\resources\images\gray ..\extjs\res\images\gray /Y /E
xcopy extjs_source_all\resources\images\default ..\extjs\res\images\default /Y /E
xcopy extjs_source_all\resources\images\access ..\extjs\res\images\access /Y /E

xcopy res\images ..\extjs\res\images /Y /E


copy extjs_source_all\examples\ux\images\row-editor-btns.gif ..\extjs\res\images /Y
copy extjs_source_all\examples\ux\images\row-editor-bg.gif ..\extjs\res\images /Y



type res\FineUI.css > _x
type res\PageLoading.css >> _x
type res\CheckBoxField.css >> _x
type res\FormViewport.css >> _x
type res\box-panel-big-header.css >> _x
type res\BigFont.css >> _x
type extjs_source_all\examples\ux\fileuploadfield\css\fileuploadfield.css >> _x
type extjs_source_all\examples\ux\css\RowEditor.css >> _x
type res\ColumnHeaderGroup_blue.css >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type css --charset utf-8 -o ..\extjs\res\css\ux.css _x


java -jar yui\build\yuicompressor-2.4.7.jar --type css --charset utf-8 -o ..\extjs\res\css\notheme.css extjs_source_all\resources\css\ext-all-notheme.css


type extjs_source_all\resources\css\ext-all-notheme.css > _x
type extjs_source_all\resources\css\xtheme-blue.css >> _x
type ..\extjs\res\css\ux.css >> _x
type res\ColumnHeaderGroup_blue.css >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type css --charset utf-8 -o ..\extjs\res\css\blue.css _x

type extjs_source_all\resources\css\ext-all-notheme.css > _x
type extjs_source_all\resources\css\xtheme-gray.css >> _x
type ..\extjs\res\css\ux.css >> _x
type res\ColumnHeaderGroup_gray.css >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type css --charset utf-8 -o ..\extjs\res\css\gray.css _x

type extjs_source_all\resources\css\ext-all-notheme.css > _x
type extjs_source_all\resources\css\xtheme-access.css >> _x
type ..\extjs\res\css\ux.css >> _x
type res\ColumnHeaderGroup_access.css >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type css --charset utf-8 -o ..\extjs\res\css\access.css _x






type extjs_source_all\src\locale\ext-lang-en.js > _x
type js\lang\fineui-lang-en.js >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type js --charset utf-8 -o ..\extjs\lang\en.js _x

type extjs_source_all\src\locale\ext-lang-pt_BR.js > _x
type js\lang\fineui-lang-pt_BR.js >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type js --charset utf-8 -o ..\extjs\lang\pt_BR.js _x

type extjs_source_all\src\locale\ext-lang-tr.js > _x
type js\lang\fineui-lang-tr.js >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type js --charset utf-8 -o ..\extjs\lang\tr.js _x

type extjs_source_all\src\locale\ext-lang-zh_CN.js > _x
type js\lang\fineui-lang-zh_CN.js >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type js --charset utf-8 -o ..\extjs\lang\zh_CN.js _x

type extjs_source_all\src\locale\ext-lang-zh_TW.js > _x
type js\lang\fineui-lang-zh_TW.js >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type js --charset utf-8 -o ..\extjs\lang\zh_TW.js _x

type extjs_source_all\src\locale\ext-lang-ru.js > _x
type js\lang\fineui-lang-ru.js >> _x
java -jar yui\build\yuicompressor-2.4.7.jar --type js --charset utf-8 -o ..\extjs\lang\ru.js _x









type extjs_source_all\adapter\ext\ext-base.js > _x
type extjs_source_all\ext-all.js >> _x
type extjs_source_all\examples\ux\RowLayout.js >> _x
type extjs_source_all\examples\ux\TabCloseMenu.js >> _x
type extjs_source_all\examples\ux\fileuploadfield\FileUploadField.js >> _x
type extjs_source_all\examples\ux\RowExpander.js >> _x
type extjs_source_all\examples\ux\RowEditor.js >> _x
type extjs_source_all\examples\ux\ColumnHeaderGroup.js >> _x
type js\ux\CheckColumn.js >> _x
type js\ux\FormViewport.js >> _x
type js\ux\SimplePagingToolbar.js >> _x

type _x > ..\extjs\ext-debug.js


type js\lib\json2.js > _x
type js\lib\Base64.js >> _x
type js\X\X.util.js >> _x
type js\X\X.ajax.js >> _x
type js\X\X.wnd.js >> _x
type js\X\extender.js >> _x
type js\X\X.simulateTree.js >> _x
type js\X\X.format.js >> _x

type _x > ..\extjs\x-debug.js


type ..\extjs\ext-debug.js > _x
type ..\extjs\x-debug.js >> _x


java -jar yui\build\yuicompressor-2.4.7.jar --type js --charset utf-8 -o ..\extjs\ext.js _x


del _x /Q

