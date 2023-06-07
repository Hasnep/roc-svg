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
        textpath,
        textElement,
        tspan,
        # Uncategorized elements
        filter,
        hatchpath,
        view,

    ]
    imports [Attribute.{ Attribute, attribute }]

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

expect
    width = Attribute.attribute "width"
    height = Attribute.attribute "height"
    xmlns = Attribute.attribute "xmlns"
    cx = Attribute.attribute "cx"
    cy = Attribute.attribute "cy"
    r = Attribute.attribute "r"
    fill = Attribute.attribute "fill"
    out =
        svg [width "100", height "100", xmlns "http://www.w3.org/2000/svg"] [
            circle
                [
                    cx "50",
                    cy "50",
                    r "50",
                    fill "red",
                ]
                [],
        ]
        |> render
    out == "<svg width=\"100\" height=\"100\" xmlns=\"http://www.w3.org/2000/svg\"><circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"red\"></circle></svg>"

# Animation elements

## Construct a `animate` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animate) for more information.
animate : List Attribute, List Node -> Node
animate = element "animate"

## Construct a `animateMotion` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animateMotion) for more information.
animatemotion : List Attribute, List Node -> Node
animatemotion = element "animateMotion"

## Construct a `animateTransform` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animateTransform) for more information.
animatetransform : List Attribute, List Node -> Node
animatetransform = element "animateTransform"

## Construct a `mpath` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/mpath) for more information.
mpath : List Attribute, List Node -> Node
mpath = element "mpath"

## Construct a `set` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/set) for more information.
set : List Attribute, List Node -> Node
set = element "set"

# Container elements

## Construct a `a` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a) for more information.
a : List Attribute, List Node -> Node
a = element "a"

## Construct a `defs` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/defs) for more information.
defs : List Attribute, List Node -> Node
defs = element "defs"

## Construct a `g` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/g) for more information.
g : List Attribute, List Node -> Node
g = element "g"

## Construct a `marker` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/marker) for more information.
marker : List Attribute, List Node -> Node
marker = element "marker"

## Construct a `mask` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/mask) for more information.
mask : List Attribute, List Node -> Node
mask = element "mask"

## Construct a `svg` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/svg) for more information.
svg : List Attribute, List Node -> Node
svg = element "svg"

## Construct a `switch` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/switch) for more information.
switch : List Attribute, List Node -> Node
switch = element "switch"

## Construct a `symbol` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/symbol) for more information.
symbol : List Attribute, List Node -> Node
symbol = element "symbol"

# Descriptive elements

## Construct a `desc` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/desc) for more information.
desc : List Attribute, List Node -> Node
desc = element "desc"

## Construct a `metadata` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/metadata) for more information.
metadata : List Attribute, List Node -> Node
metadata = element "metadata"

## Construct a `title` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/title) for more information.
title : List Attribute, List Node -> Node
title = element "title"

# Filter primitive elements

## Construct a `feBlend` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feBlend) for more information.
feblend : List Attribute, List Node -> Node
feblend = element "feBlend"

## Construct a `feColorMatrix` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feColorMatrix) for more information.
fecolormatrix : List Attribute, List Node -> Node
fecolormatrix = element "feColorMatrix"

## Construct a `feComponentTransfer` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feComponentTransfer) for more information.
fecomponenttransfer : List Attribute, List Node -> Node
fecomponenttransfer = element "feComponentTransfer"

## Construct a `feComposite` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feComposite) for more information.
fecomposite : List Attribute, List Node -> Node
fecomposite = element "feComposite"

## Construct a `feConvolveMatrix` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feConvolveMatrix) for more information.
feconvolvematrix : List Attribute, List Node -> Node
feconvolvematrix = element "feConvolveMatrix"

## Construct a `feDiffuseLighting` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feDiffuseLighting) for more information.
fediffuselighting : List Attribute, List Node -> Node
fediffuselighting = element "feDiffuseLighting"

## Construct a `feDisplacementMap` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feDisplacementMap) for more information.
fedisplacementmap : List Attribute, List Node -> Node
fedisplacementmap = element "feDisplacementMap"

## Construct a `feDropShadow` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feDropShadow) for more information.
fedropshadow : List Attribute, List Node -> Node
fedropshadow = element "feDropShadow"

## Construct a `feFlood` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFlood) for more information.
feflood : List Attribute, List Node -> Node
feflood = element "feFlood"

## Construct a `feFuncA` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFuncA) for more information.
fefunca : List Attribute, List Node -> Node
fefunca = element "feFuncA"

## Construct a `feFuncB` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFuncB) for more information.
fefuncb : List Attribute, List Node -> Node
fefuncb = element "feFuncB"

## Construct a `feFuncG` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFuncG) for more information.
fefuncg : List Attribute, List Node -> Node
fefuncg = element "feFuncG"

## Construct a `feFuncR` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feFuncR) for more information.
fefuncr : List Attribute, List Node -> Node
fefuncr = element "feFuncR"

## Construct a `feGaussianBlur` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feGaussianBlur) for more information.
fegaussianblur : List Attribute, List Node -> Node
fegaussianblur = element "feGaussianBlur"

## Construct a `feImage` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feImage) for more information.
feimage : List Attribute, List Node -> Node
feimage = element "feImage"

## Construct a `feMerge` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feMerge) for more information.
femerge : List Attribute, List Node -> Node
femerge = element "feMerge"

## Construct a `feMergeNode` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feMergeNode) for more information.
femergenode : List Attribute, List Node -> Node
femergenode = element "feMergeNode"

## Construct a `feMorphology` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feMorphology) for more information.
femorphology : List Attribute, List Node -> Node
femorphology = element "feMorphology"

## Construct a `feOffset` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feOffset) for more information.
feoffset : List Attribute, List Node -> Node
feoffset = element "feOffset"

## Construct a `feSpecularLighting` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feSpecularLighting) for more information.
fespecularlighting : List Attribute, List Node -> Node
fespecularlighting = element "feSpecularLighting"

## Construct a `feTile` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feTile) for more information.
fetile : List Attribute, List Node -> Node
fetile = element "feTile"

## Construct a `feTurbulence` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feTurbulence) for more information.
feturbulence : List Attribute, List Node -> Node
feturbulence = element "feTurbulence"

# Gradient elements

## Construct a `linearGradient` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/linearGradient) for more information.
lineargradient : List Attribute, List Node -> Node
lineargradient = element "linearGradient"

## Construct a `radialGradient` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/radialGradient) for more information.
radialgradient : List Attribute, List Node -> Node
radialgradient = element "radialGradient"

## Construct a `stop` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/stop) for more information.
stop : List Attribute, List Node -> Node
stop = element "stop"

# Light source elements

## Construct a `feDistantLight` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feDistantLight) for more information.
fedistantlight : List Attribute, List Node -> Node
fedistantlight = element "feDistantLight"

## Construct a `fePointLight` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fePointLight) for more information.
fepointlight : List Attribute, List Node -> Node
fepointlight = element "fePointLight"

## Construct a `feSpotLight` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feSpotLight) for more information.
fespotlight : List Attribute, List Node -> Node
fespotlight = element "feSpotLight"

# Never-rendered elements

## Construct a `clipPath` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/clipPath) for more information.
clippath : List Attribute, List Node -> Node
clippath = element "clipPath"

## Construct a `script` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/script) for more information.
script : List Attribute, List Node -> Node
script = element "script"

## Construct a `style` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/style) for more information.
style : List Attribute, List Node -> Node
style = element "style"

# Paint server elements

## Construct a `hatch` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/hatch) for more information.
hatch : List Attribute, List Node -> Node
hatch = element "hatch"

## Construct a `pattern` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/pattern) for more information.
pattern : List Attribute, List Node -> Node
pattern = element "pattern"

## Construct a `solidcolor` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/solidcolor) for more information.
solidcolor : List Attribute, List Node -> Node
solidcolor = element "solidcolor"

# Renderable elements

## Construct a `foreignObject` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/foreignObject) for more information.
foreignobject : List Attribute, List Node -> Node
foreignobject = element "foreignObject"

## Construct a `image` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/image) for more information.
image : List Attribute, List Node -> Node
image = element "image"

## Construct a `use` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/use) for more information.
use : List Attribute, List Node -> Node
use = element "use"

# Shape elements

## Construct a `circle` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle) for more information.
circle : List Attribute, List Node -> Node
circle = element "circle"

## Construct a `ellipse` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse) for more information.
ellipse : List Attribute, List Node -> Node
ellipse = element "ellipse"

## Construct a `line` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/line) for more information.
line : List Attribute, List Node -> Node
line = element "line"

## Construct a `path` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/path) for more information.
path : List Attribute, List Node -> Node
path = element "path"

## Construct a `polygon` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polygon) for more information.
polygon : List Attribute, List Node -> Node
polygon = element "polygon"

## Construct a `polyline` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline) for more information.
polyline : List Attribute, List Node -> Node
polyline = element "polyline"

## Construct a `rect` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect) for more information.
rect : List Attribute, List Node -> Node
rect = element "rect"

# Text content elements

## Construct a `textPath` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/textPath) for more information.
textpath : List Attribute, List Node -> Node
textpath = element "textPath"

## Construct a `text` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text) for more information.
textElement : List Attribute, List Node -> Node
textElement = element "text"

## Construct a `tspan` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan) for more information.
tspan : List Attribute, List Node -> Node
tspan = element "tspan"

# Uncategorized elements

## Construct a `filter` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/filter) for more information.
filter : List Attribute, List Node -> Node
filter = element "filter"

## Construct a `hatchpath` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/hatchpath) for more information.
hatchpath : List Attribute, List Node -> Node
hatchpath = element "hatchpath"

## Construct a `view` element.
##
## See the element's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/view) for more information.
view : List Attribute, List Node -> Node
view = element "view"
