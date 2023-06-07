interface Svg
    exposes [
        Node,
        text,
        element,
        render,
        a,
        animate,
        animateMotion,
        animateTransform,
        circle,
        clipPath,
        defs,
        desc,
        ellipse,
        feBlend,
        feColorMatrix,
        feComponentTransfer,
        feComposite,
        feConvolveMatrix,
        feDiffuseLighting,
        feDisplacementMap,
        feDistantLight,
        feDropShadow,
        feFlood,
        feFuncA,
        feFuncB,
        feFuncG,
        feFuncR,
        feGaussianBlur,
        feImage,
        feMerge,
        feMergeNode,
        feMorphology,
        feOffset,
        fePointLight,
        feSpecularLighting,
        feSpotLight,
        feTile,
        feTurbulence,
        filter,
        foreignObject,
        g,
        image,
        line,
        linearGradient,
        marker,
        mask,
        metadata,
        mpath,
        path,
        pattern,
        polygon,
        polyline,
        radialGradient,
        rect,
        script,
        set,
        stop,
        style,
        svg,
        switch,
        symbol,
        textElement,
        textPath,
        title,
        tspan,
        use,
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

## Construct an `a` element.
##
## See the [`a` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a) for more information.
a : List Attribute, List Node -> Node
a = element "a"

## Construct an `animate` element.
##
## See the [`animate` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animate) for more information.
animate : List Attribute, List Node -> Node
animate = element "animate"

## Construct an `animateMotion` element.
##
## See the [`animateMotion` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animatemotion) for more information.
animateMotion : List Attribute, List Node -> Node
animateMotion = element "animateMotion"

## Construct an `animateTransform` element.
##
## See the [`animateTransform` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animatetransform) for more information.
animateTransform : List Attribute, List Node -> Node
animateTransform = element "animateTransform"

## Construct a `circle` element.
##
## See the [`circle` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle) for more information.
circle : List Attribute, List Node -> Node
circle = element "circle"

## Construct a `clipPath` element.
##
## See the [`clipPath` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/clippath) for more information.
clipPath : List Attribute, List Node -> Node
clipPath = element "clipPath"

## Construct a `defs` element.
##
## See the [`defs` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/defs) for more information.
defs : List Attribute, List Node -> Node
defs = element "defs"

## Construct a `desc` element.
##
## See the [`desc` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/desc) for more information.
desc : List Attribute, List Node -> Node
desc = element "desc"

## Construct an `ellipse` element.
##
## See the [`ellipse` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse) for more information.
ellipse : List Attribute, List Node -> Node
ellipse = element "ellipse"

## Construct a `feBlend` element.
##
## See the [`feBlend` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feblend) for more information.
feBlend : List Attribute, List Node -> Node
feBlend = element "feBlend"

## Construct a `feColorMatrix` element.
##
## See the [`feColorMatrix` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fecolormatrix) for more information.
feColorMatrix : List Attribute, List Node -> Node
feColorMatrix = element "feColorMatrix"

## Construct a `feComponentTransfer` element.
##
## See the [`feComponentTransfer` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fecomponenttransfer) for more information.
feComponentTransfer : List Attribute, List Node -> Node
feComponentTransfer = element "feComponentTransfer"

## Construct a `feComposite` element.
##
## See the [`feComposite` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fecomposite) for more information.
feComposite : List Attribute, List Node -> Node
feComposite = element "feComposite"

## Construct a `feConvolveMatrix` element.
##
## See the [`feConvolveMatrix` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feconvolvematrix) for more information.
feConvolveMatrix : List Attribute, List Node -> Node
feConvolveMatrix = element "feConvolveMatrix"

## Construct a `feDiffuseLighting` element.
##
## See the [`feDiffuseLighting` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fediffuselighting) for more information.
feDiffuseLighting : List Attribute, List Node -> Node
feDiffuseLighting = element "feDiffuseLighting"

## Construct a `feDisplacementMap` element.
##
## See the [`feDisplacementMap` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fedisplacementmap) for more information.
feDisplacementMap : List Attribute, List Node -> Node
feDisplacementMap = element "feDisplacementMap"

## Construct a `feDistantLight` element.
##
## See the [`feDistantLight` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fedistantlight) for more information.
feDistantLight : List Attribute, List Node -> Node
feDistantLight = element "feDistantLight"

## Construct a `feDropShadow` element.
##
## See the [`feDropShadow` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fedropshadow) for more information.
feDropShadow : List Attribute, List Node -> Node
feDropShadow = element "feDropShadow"

## Construct a `feFlood` element.
##
## See the [`feFlood` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feflood) for more information.
feFlood : List Attribute, List Node -> Node
feFlood = element "feFlood"

## Construct a `feFuncA` element.
##
## See the [`feFuncA` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fefunca) for more information.
feFuncA : List Attribute, List Node -> Node
feFuncA = element "feFuncA"

## Construct a `feFuncB` element.
##
## See the [`feFuncB` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fefuncb) for more information.
feFuncB : List Attribute, List Node -> Node
feFuncB = element "feFuncB"

## Construct a `feFuncG` element.
##
## See the [`feFuncG` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fefuncg) for more information.
feFuncG : List Attribute, List Node -> Node
feFuncG = element "feFuncG"

## Construct a `feFuncR` element.
##
## See the [`feFuncR` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fefuncr) for more information.
feFuncR : List Attribute, List Node -> Node
feFuncR = element "feFuncR"

## Construct a `feGaussianBlur` element.
##
## See the [`feGaussianBlur` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fegaussianblur) for more information.
feGaussianBlur : List Attribute, List Node -> Node
feGaussianBlur = element "feGaussianBlur"

## Construct a `feImage` element.
##
## See the [`feImage` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feimage) for more information.
feImage : List Attribute, List Node -> Node
feImage = element "feImage"

## Construct a `feMerge` element.
##
## See the [`feMerge` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/femerge) for more information.
feMerge : List Attribute, List Node -> Node
feMerge = element "feMerge"

## Construct a `feMergeNode` element.
##
## See the [`feMergeNode` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/femergenode) for more information.
feMergeNode : List Attribute, List Node -> Node
feMergeNode = element "feMergeNode"

## Construct a `feMorphology` element.
##
## See the [`feMorphology` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/femorphology) for more information.
feMorphology : List Attribute, List Node -> Node
feMorphology = element "feMorphology"

## Construct a `feOffset` element.
##
## See the [`feOffset` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feoffset) for more information.
feOffset : List Attribute, List Node -> Node
feOffset = element "feOffset"

## Construct a `fePointLight` element.
##
## See the [`fePointLight` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fepointlight) for more information.
fePointLight : List Attribute, List Node -> Node
fePointLight = element "fePointLight"

## Construct a `feSpecularLighting` element.
##
## See the [`feSpecularLighting` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fespecularlighting) for more information.
feSpecularLighting : List Attribute, List Node -> Node
feSpecularLighting = element "feSpecularLighting"

## Construct a `feSpotLight` element.
##
## See the [`feSpotLight` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fespotlight) for more information.
feSpotLight : List Attribute, List Node -> Node
feSpotLight = element "feSpotLight"

## Construct a `feTile` element.
##
## See the [`feTile` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fetile) for more information.
feTile : List Attribute, List Node -> Node
feTile = element "feTile"

## Construct a `feTurbulence` element.
##
## See the [`feTurbulence` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feturbulence) for more information.
feTurbulence : List Attribute, List Node -> Node
feTurbulence = element "feTurbulence"

## Construct a `filter` element.
##
## See the [`filter` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/filter) for more information.
filter : List Attribute, List Node -> Node
filter = element "filter"

## Construct a `foreignObject` element.
##
## See the [`foreignObject` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/foreignobject) for more information.
foreignObject : List Attribute, List Node -> Node
foreignObject = element "foreignObject"

## Construct a `g` element.
##
## See the [`g` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/g) for more information.
g : List Attribute, List Node -> Node
g = element "g"

## Construct an `image` element.
##
## See the [`image` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/image) for more information.
image : List Attribute, List Node -> Node
image = element "image"

## Construct a `line` element.
##
## See the [`line` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/line) for more information.
line : List Attribute, List Node -> Node
line = element "line"

## Construct a `linearGradient` element.
##
## See the [`linearGradient` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/lineargradient) for more information.
linearGradient : List Attribute, List Node -> Node
linearGradient = element "linearGradient"

## Construct a `marker` element.
##
## See the [`marker` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/marker) for more information.
marker : List Attribute, List Node -> Node
marker = element "marker"

## Construct a `mask` element.
##
## See the [`mask` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/mask) for more information.
mask : List Attribute, List Node -> Node
mask = element "mask"

## Construct a `metadata` element.
##
## See the [`metadata` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/metadata) for more information.
metadata : List Attribute, List Node -> Node
metadata = element "metadata"

## Construct a `mpath` element.
##
## See the [`mpath` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/mpath) for more information.
mpath : List Attribute, List Node -> Node
mpath = element "mpath"

## Construct a `path` element.
##
## See the [`path` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/path) for more information.
path : List Attribute, List Node -> Node
path = element "path"

## Construct a `pattern` element.
##
## See the [`pattern` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/pattern) for more information.
pattern : List Attribute, List Node -> Node
pattern = element "pattern"

## Construct a `polygon` element.
##
## See the [`polygon` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polygon) for more information.
polygon : List Attribute, List Node -> Node
polygon = element "polygon"

## Construct a `polyline` element.
##
## See the [`polyline` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline) for more information.
polyline : List Attribute, List Node -> Node
polyline = element "polyline"

## Construct a `radialGradient` element.
##
## See the [`radialGradient` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/radialgradient) for more information.
radialGradient : List Attribute, List Node -> Node
radialGradient = element "radialGradient"

## Construct a `rect` element.
##
## See the [`rect` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect) for more information.
rect : List Attribute, List Node -> Node
rect = element "rect"

## Construct a `script` element.
##
## See the [`script` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/script) for more information.
script : List Attribute, List Node -> Node
script = element "script"

## Construct a `set` element.
##
## See the [`set` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/set) for more information.
set : List Attribute, List Node -> Node
set = element "set"

## Construct a `stop` element.
##
## See the [`stop` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/stop) for more information.
stop : List Attribute, List Node -> Node
stop = element "stop"

## Construct a `style` element.
##
## See the [`style` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/style) for more information.
style : List Attribute, List Node -> Node
style = element "style"

## Construct a `svg` element.
##
## See the [`svg` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/svg) for more information.
svg : List Attribute, List Node -> Node
svg = element "svg"

## Construct a `switch` element.
##
## See the [`switch` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/switch) for more information.
switch : List Attribute, List Node -> Node
switch = element "switch"

## Construct a `symbol` element.
##
## See the [`symbol` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/symbol) for more information.
symbol : List Attribute, List Node -> Node
symbol = element "symbol"

## Construct a `text` element.
##
## See the [`text` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text) for more information.
textElement : List Attribute, List Node -> Node
textElement = element "text"

## Construct a `textPath` element.
##
## See the [`textPath` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/textpath) for more information.
textPath : List Attribute, List Node -> Node
textPath = element "textPath"

## Construct a `title` element.
##
## See the [`title` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/title) for more information.
title : List Attribute, List Node -> Node
title = element "title"

## Construct a `tspan` element.
##
## See the [`tspan` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan) for more information.
tspan : List Attribute, List Node -> Node
tspan = element "tspan"

## Construct an `use` element.
##
## See the [`use` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/use) for more information.
use : List Attribute, List Node -> Node
use = element "use"

## Construct a `view` element.
##
## See the [`view` element page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/view) for more information.
view : List Attribute, List Node -> Node
view = element "view"
