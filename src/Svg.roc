interface Svg
    exposes [
        Node,
        text,
        element,
        render,
        # Animation elements
        animate,
        animatemotion,
        animatetransform,
        mpath,
        set,
        # Container elements
        a,
        defs,
        g,
        marker,
        mask,
        missingGlyph,
        svg,
        switch,
        symbol,
        # Descriptive elements
        desc,
        metadata,
        title,
        # Filter primitive elements
        feblend,
        fecolormatrix,
        fecomponenttransfer,
        fecomposite,
        feconvolvematrix,
        fediffuselighting,
        fedisplacementmap,
        fedropshadow,
        feflood,
        fefunca,
        fefuncb,
        fefuncg,
        fefuncr,
        fegaussianblur,
        feimage,
        femerge,
        femergenode,
        femorphology,
        feoffset,
        fespecularlighting,
        fetile,
        feturbulence,
        # Font elements
        font,
        fontFace,
        fontFaceFormat,
        fontFaceName,
        fontFaceSrc,
        fontFaceUri,
        hkern,
        vkern,
        # Gradient elements
        lineargradient,
        radialgradient,
        stop,
        # Light source elements
        fedistantlight,
        fepointlight,
        fespotlight,
        # Never-rendered elements
        clippath,
        script,
        style,
        # Paint server elements
        hatch,
        pattern,
        solidcolor,
        # Renderable elements
        foreignobject,
        image,
        use,
        # Shape elements
        circle,
        ellipse,
        line,
        path,
        polygon,
        polyline,
        rect,
        # Text content elements
        glyph,
        glyphref,
        textpath,
        textElement,
        tref,
        tspan,
        # Uncategorized elements
        cursor,
        filter,
        hatchpath,
        view,

    ]
    imports [Attribute.{ Attribute }]

## An SVG node, either an element or a text string.
Node : [Element Str (List Attribute) (List Node), Text Str]

## Create a `Text` node containing a string.
text : Str -> Node
text = Text

## Construct an element
element : Str -> (List Attribute, List Node -> Node)
element = \tagName -> \attributes, children -> Element tagName attributes children

## Render an SVG node
render : Node -> Str
render = \node ->
    when node is
        Text content -> content
        Element tagName attributes children ->
            attributesStr = attributes |> List.map (\Attribute attributeKey attributeValue -> " \(attributeKey)=\"\(attributeValue)\"") |> Str.joinWith ""
            childrenStr = children |> List.map render |> Str.joinWith ""
            "<\(tagName)\(attributesStr)>\(childrenStr)</\(tagName)>"

# Animation elements

## Construct a `animate` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animate) for more informaiton.
animate : List Attribute, List Node -> Node
animate = element "animate"

## Construct a `animateMotion` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animateMotion) for more informaiton.
animatemotion : List Attribute, List Node -> Node
animatemotion = element "animateMotion"

## Construct a `animateTransform` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animateTransform) for more informaiton.
animatetransform : List Attribute, List Node -> Node
animatetransform = element "animateTransform"

## Construct a `mpath` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/mpath) for more informaiton.
mpath : List Attribute, List Node -> Node
mpath = element "mpath"

## Construct a `set` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/set) for more informaiton.
set : List Attribute, List Node -> Node
set = element "set"

# Container elements

## Construct a `a` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a) for more informaiton.
a : List Attribute, List Node -> Node
a = element "a"

## Construct a `defs` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/defs) for more informaiton.
defs : List Attribute, List Node -> Node
defs = element "defs"

## Construct a `g` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/g) for more informaiton.
g : List Attribute, List Node -> Node
g = element "g"

## Construct a `marker` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/marker) for more informaiton.
marker : List Attribute, List Node -> Node
marker = element "marker"

## Construct a `mask` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/mask) for more informaiton.
mask : List Attribute, List Node -> Node
mask = element "mask"

## Construct a `missing-glyph` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/missing-glyph) for more informaiton.
missingGlyph : List Attribute, List Node -> Node
missingGlyph = element "missing-glyph"

## Construct a `svg` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/svg) for more informaiton.
svg : List Attribute, List Node -> Node
svg = element "svg"

## Construct a `switch` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/switch) for more informaiton.
switch : List Attribute, List Node -> Node
switch = element "switch"

## Construct a `symbol` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/symbol) for more informaiton.
symbol : List Attribute, List Node -> Node
symbol = element "symbol"

# Descriptive elements

## Construct a `desc` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/desc) for more informaiton.
desc : List Attribute, List Node -> Node
desc = element "desc"

## Construct a `metadata` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/metadata) for more informaiton.
metadata : List Attribute, List Node -> Node
metadata = element "metadata"

## Construct a `title` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/title) for more informaiton.
title : List Attribute, List Node -> Node
title = element "title"

# Filter primitive elements

## Construct a `feBlend` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feBlend) for more informaiton.
feblend : List Attribute, List Node -> Node
feblend = element "feBlend"

## Construct a `feColorMatrix` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feColorMatrix) for more informaiton.
fecolormatrix : List Attribute, List Node -> Node
fecolormatrix = element "feColorMatrix"

## Construct a `feComponentTransfer` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feComponentTransfer) for more informaiton.
fecomponenttransfer : List Attribute, List Node -> Node
fecomponenttransfer = element "feComponentTransfer"

## Construct a `feComposite` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feComposite) for more informaiton.
fecomposite : List Attribute, List Node -> Node
fecomposite = element "feComposite"

## Construct a `feConvolveMatrix` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feConvolveMatrix) for more informaiton.
feconvolvematrix : List Attribute, List Node -> Node
feconvolvematrix = element "feConvolveMatrix"

## Construct a `feDiffuseLighting` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feDiffuseLighting) for more informaiton.
fediffuselighting : List Attribute, List Node -> Node
fediffuselighting = element "feDiffuseLighting"

## Construct a `feDisplacementMap` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feDisplacementMap) for more informaiton.
fedisplacementmap : List Attribute, List Node -> Node
fedisplacementmap = element "feDisplacementMap"

## Construct a `feDropShadow` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feDropShadow) for more informaiton.
fedropshadow : List Attribute, List Node -> Node
fedropshadow = element "feDropShadow"

## Construct a `feFlood` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFlood) for more informaiton.
feflood : List Attribute, List Node -> Node
feflood = element "feFlood"

## Construct a `feFuncA` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFuncA) for more informaiton.
fefunca : List Attribute, List Node -> Node
fefunca = element "feFuncA"

## Construct a `feFuncB` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFuncB) for more informaiton.
fefuncb : List Attribute, List Node -> Node
fefuncb = element "feFuncB"

## Construct a `feFuncG` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFuncG) for more informaiton.
fefuncg : List Attribute, List Node -> Node
fefuncg = element "feFuncG"

## Construct a `feFuncR` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFuncR) for more informaiton.
fefuncr : List Attribute, List Node -> Node
fefuncr = element "feFuncR"

## Construct a `feGaussianBlur` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feGaussianBlur) for more informaiton.
fegaussianblur : List Attribute, List Node -> Node
fegaussianblur = element "feGaussianBlur"

## Construct a `feImage` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feImage) for more informaiton.
feimage : List Attribute, List Node -> Node
feimage = element "feImage"

## Construct a `feMerge` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feMerge) for more informaiton.
femerge : List Attribute, List Node -> Node
femerge = element "feMerge"

## Construct a `feMergeNode` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feMergeNode) for more informaiton.
femergenode : List Attribute, List Node -> Node
femergenode = element "feMergeNode"

## Construct a `feMorphology` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feMorphology) for more informaiton.
femorphology : List Attribute, List Node -> Node
femorphology = element "feMorphology"

## Construct a `feOffset` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feOffset) for more informaiton.
feoffset : List Attribute, List Node -> Node
feoffset = element "feOffset"

## Construct a `feSpecularLighting` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feSpecularLighting) for more informaiton.
fespecularlighting : List Attribute, List Node -> Node
fespecularlighting = element "feSpecularLighting"

## Construct a `feTile` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feTile) for more informaiton.
fetile : List Attribute, List Node -> Node
fetile = element "feTile"

## Construct a `feTurbulence` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feTurbulence) for more informaiton.
feturbulence : List Attribute, List Node -> Node
feturbulence = element "feTurbulence"

# Font elements

## Construct a `font` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/font) for more informaiton.
font : List Attribute, List Node -> Node
font = element "font"

## Construct a `font-face` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/font-face) for more informaiton.
fontFace : List Attribute, List Node -> Node
fontFace = element "font-face"

## Construct a `font-face-format` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/font-face-format) for more informaiton.
fontFaceFormat : List Attribute, List Node -> Node
fontFaceFormat = element "font-face-format"

## Construct a `font-face-name` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/font-face-name) for more informaiton.
fontFaceName : List Attribute, List Node -> Node
fontFaceName = element "font-face-name"

## Construct a `font-face-src` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/font-face-src) for more informaiton.
fontFaceSrc : List Attribute, List Node -> Node
fontFaceSrc = element "font-face-src"

## Construct a `font-face-uri` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/font-face-uri) for more informaiton.
fontFaceUri : List Attribute, List Node -> Node
fontFaceUri = element "font-face-uri"

## Construct a `hkern` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/hkern) for more informaiton.
hkern : List Attribute, List Node -> Node
hkern = element "hkern"

## Construct a `vkern` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/vkern) for more informaiton.
vkern : List Attribute, List Node -> Node
vkern = element "vkern"

# Gradient elements

## Construct a `linearGradient` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/linearGradient) for more informaiton.
lineargradient : List Attribute, List Node -> Node
lineargradient = element "linearGradient"

## Construct a `radialGradient` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/radialGradient) for more informaiton.
radialgradient : List Attribute, List Node -> Node
radialgradient = element "radialGradient"

## Construct a `stop` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/stop) for more informaiton.
stop : List Attribute, List Node -> Node
stop = element "stop"

# Light source elements

## Construct a `feDistantLight` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feDistantLight) for more informaiton.
fedistantlight : List Attribute, List Node -> Node
fedistantlight = element "feDistantLight"

## Construct a `fePointLight` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fePointLight) for more informaiton.
fepointlight : List Attribute, List Node -> Node
fepointlight = element "fePointLight"

## Construct a `feSpotLight` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feSpotLight) for more informaiton.
fespotlight : List Attribute, List Node -> Node
fespotlight = element "feSpotLight"

# Never-rendered elements

## Construct a `clipPath` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/clipPath) for more informaiton.
clippath : List Attribute, List Node -> Node
clippath = element "clipPath"

## Construct a `script` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/script) for more informaiton.
script : List Attribute, List Node -> Node
script = element "script"

## Construct a `style` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/style) for more informaiton.
style : List Attribute, List Node -> Node
style = element "style"

# Paint server elements

## Construct a `hatch` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/hatch) for more informaiton.
hatch : List Attribute, List Node -> Node
hatch = element "hatch"

## Construct a `pattern` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/pattern) for more informaiton.
pattern : List Attribute, List Node -> Node
pattern = element "pattern"

## Construct a `solidcolor` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/solidcolor) for more informaiton.
solidcolor : List Attribute, List Node -> Node
solidcolor = element "solidcolor"

# Renderable elements

## Construct a `foreignObject` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/foreignObject) for more informaiton.
foreignobject : List Attribute, List Node -> Node
foreignobject = element "foreignObject"

## Construct a `image` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/image) for more informaiton.
image : List Attribute, List Node -> Node
image = element "image"

## Construct a `use` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/use) for more informaiton.
use : List Attribute, List Node -> Node
use = element "use"

# Shape elements

## Construct a `circle` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle) for more informaiton.
circle : List Attribute, List Node -> Node
circle = element "circle"

## Construct a `ellipse` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse) for more informaiton.
ellipse : List Attribute, List Node -> Node
ellipse = element "ellipse"

## Construct a `line` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/line) for more informaiton.
line : List Attribute, List Node -> Node
line = element "line"

## Construct a `path` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/path) for more informaiton.
path : List Attribute, List Node -> Node
path = element "path"

## Construct a `polygon` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polygon) for more informaiton.
polygon : List Attribute, List Node -> Node
polygon = element "polygon"

## Construct a `polyline` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline) for more informaiton.
polyline : List Attribute, List Node -> Node
polyline = element "polyline"

## Construct a `rect` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect) for more informaiton.
rect : List Attribute, List Node -> Node
rect = element "rect"

# Text content elements

## Construct a `glyph` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/glyph) for more informaiton.
glyph : List Attribute, List Node -> Node
glyph = element "glyph"

## Construct a `glyphRef` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/glyphRef) for more informaiton.
glyphref : List Attribute, List Node -> Node
glyphref = element "glyphRef"

## Construct a `textPath` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/textPath) for more informaiton.
textpath : List Attribute, List Node -> Node
textpath = element "textPath"

## Construct a `text` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text) for more informaiton.
textElement : List Attribute, List Node -> Node
textElement = element "text"

## Construct a `tref` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tref) for more informaiton.
tref : List Attribute, List Node -> Node
tref = element "tref"

## Construct a `tspan` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan) for more informaiton.
tspan : List Attribute, List Node -> Node
tspan = element "tspan"

# Uncategorized elements

## Construct a `cursor` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/cursor) for more informaiton.
cursor : List Attribute, List Node -> Node
cursor = element "cursor"

## Construct a `filter` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/filter) for more informaiton.
filter : List Attribute, List Node -> Node
filter = element "filter"

## Construct a `hatchpath` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/hatchpath) for more informaiton.
hatchpath : List Attribute, List Node -> Node
hatchpath = element "hatchpath"

## Construct a `view` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/view) for more informaiton.
view : List Attribute, List Node -> Node
view = element "view"
