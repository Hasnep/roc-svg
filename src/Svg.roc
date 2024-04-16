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
            attributesStr = attributes |> List.map (\Attribute attributeKey attributeValue -> " $(attributeKey)=\"$(attributeValue)\"") |> Str.joinWith ""
            childrenStr = children |> List.map render |> Str.joinWith ""
            "<$(tagName)$(attributesStr)>$(childrenStr)</$(tagName)>"

expect
    width = attribute "width"
    height = attribute "height"
    xmlns = attribute "xmlns"
    cx = attribute "cx"
    cy = attribute "cy"
    r = attribute "r"
    fill = attribute "fill"
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

## Construct an [`a`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a) element.
a : List Attribute, List Node -> Node
a = element "a"

## Construct an [`animate`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animate) element.
animate : List Attribute, List Node -> Node
animate = element "animate"

## Construct an [`animateMotion`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animatemotion) element.
animateMotion : List Attribute, List Node -> Node
animateMotion = element "animateMotion"

## Construct an [`animateTransform`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/animatetransform) element.
animateTransform : List Attribute, List Node -> Node
animateTransform = element "animateTransform"

## Construct a [`circle`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/circle) element.
circle : List Attribute, List Node -> Node
circle = element "circle"

## Construct a [`clipPath`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/clippath) element.
clipPath : List Attribute, List Node -> Node
clipPath = element "clipPath"

## Construct a [`defs`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/defs) element.
defs : List Attribute, List Node -> Node
defs = element "defs"

## Construct a [`desc`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/desc) element.
desc : List Attribute, List Node -> Node
desc = element "desc"

## Construct an [`ellipse`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/ellipse) element.
ellipse : List Attribute, List Node -> Node
ellipse = element "ellipse"

## Construct a [`feBlend`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feblend) element.
feBlend : List Attribute, List Node -> Node
feBlend = element "feBlend"

## Construct a [`feColorMatrix`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fecolormatrix) element.
feColorMatrix : List Attribute, List Node -> Node
feColorMatrix = element "feColorMatrix"

## Construct a [`feComponentTransfer`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fecomponenttransfer) element.
feComponentTransfer : List Attribute, List Node -> Node
feComponentTransfer = element "feComponentTransfer"

## Construct a [`feComposite`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fecomposite) element.
feComposite : List Attribute, List Node -> Node
feComposite = element "feComposite"

## Construct a [`feConvolveMatrix`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feconvolvematrix) element.
feConvolveMatrix : List Attribute, List Node -> Node
feConvolveMatrix = element "feConvolveMatrix"

## Construct a [`feDiffuseLighting`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fediffuselighting) element.
feDiffuseLighting : List Attribute, List Node -> Node
feDiffuseLighting = element "feDiffuseLighting"

## Construct a [`feDisplacementMap`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fedisplacementmap) element.
feDisplacementMap : List Attribute, List Node -> Node
feDisplacementMap = element "feDisplacementMap"

## Construct a [`feDistantLight`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fedistantlight) element.
feDistantLight : List Attribute, List Node -> Node
feDistantLight = element "feDistantLight"

## Construct a [`feDropShadow`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fedropshadow) element.
feDropShadow : List Attribute, List Node -> Node
feDropShadow = element "feDropShadow"

## Construct a [`feFlood`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feflood) element.
feFlood : List Attribute, List Node -> Node
feFlood = element "feFlood"

## Construct a [`feFuncA`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fefunca) element.
feFuncA : List Attribute, List Node -> Node
feFuncA = element "feFuncA"

## Construct a [`feFuncB`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fefuncb) element.
feFuncB : List Attribute, List Node -> Node
feFuncB = element "feFuncB"

## Construct a [`feFuncG`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fefuncg) element.
feFuncG : List Attribute, List Node -> Node
feFuncG = element "feFuncG"

## Construct a [`feFuncR`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fefuncr) element.
feFuncR : List Attribute, List Node -> Node
feFuncR = element "feFuncR"

## Construct a [`feGaussianBlur`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fegaussianblur) element.
feGaussianBlur : List Attribute, List Node -> Node
feGaussianBlur = element "feGaussianBlur"

## Construct a [`feImage`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feimage) element.
feImage : List Attribute, List Node -> Node
feImage = element "feImage"

## Construct a [`feMerge`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/femerge) element.
feMerge : List Attribute, List Node -> Node
feMerge = element "feMerge"

## Construct a [`feMergeNode`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/femergenode) element.
feMergeNode : List Attribute, List Node -> Node
feMergeNode = element "feMergeNode"

## Construct a [`feMorphology`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/femorphology) element.
feMorphology : List Attribute, List Node -> Node
feMorphology = element "feMorphology"

## Construct a [`feOffset`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feoffset) element.
feOffset : List Attribute, List Node -> Node
feOffset = element "feOffset"

## Construct a [`fePointLight`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fepointlight) element.
fePointLight : List Attribute, List Node -> Node
fePointLight = element "fePointLight"

## Construct a [`feSpecularLighting`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fespecularlighting) element.
feSpecularLighting : List Attribute, List Node -> Node
feSpecularLighting = element "feSpecularLighting"

## Construct a [`feSpotLight`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fespotlight) element.
feSpotLight : List Attribute, List Node -> Node
feSpotLight = element "feSpotLight"

## Construct a [`feTile`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/fetile) element.
feTile : List Attribute, List Node -> Node
feTile = element "feTile"

## Construct a [`feTurbulence`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feturbulence) element.
feTurbulence : List Attribute, List Node -> Node
feTurbulence = element "feTurbulence"

## Construct a [`filter`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/filter) element.
filter : List Attribute, List Node -> Node
filter = element "filter"

## Construct a [`foreignObject`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/foreignobject) element.
foreignObject : List Attribute, List Node -> Node
foreignObject = element "foreignObject"

## Construct a [`g`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/g) element.
g : List Attribute, List Node -> Node
g = element "g"

## Construct an [`image`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/image) element.
image : List Attribute, List Node -> Node
image = element "image"

## Construct a [`line`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/line) element.
line : List Attribute, List Node -> Node
line = element "line"

## Construct a [`linearGradient`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/lineargradient) element.
linearGradient : List Attribute, List Node -> Node
linearGradient = element "linearGradient"

## Construct a [`marker`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/marker) element.
marker : List Attribute, List Node -> Node
marker = element "marker"

## Construct a [`mask`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/mask) element.
mask : List Attribute, List Node -> Node
mask = element "mask"

## Construct a [`metadata`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/metadata) element.
metadata : List Attribute, List Node -> Node
metadata = element "metadata"

## Construct a [`mpath`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/mpath) element.
mpath : List Attribute, List Node -> Node
mpath = element "mpath"

## Construct a [`path`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/path) element.
path : List Attribute, List Node -> Node
path = element "path"

## Construct a [`pattern`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/pattern) element.
pattern : List Attribute, List Node -> Node
pattern = element "pattern"

## Construct a [`polygon`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polygon) element.
polygon : List Attribute, List Node -> Node
polygon = element "polygon"

## Construct a [`polyline`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/polyline) element.
polyline : List Attribute, List Node -> Node
polyline = element "polyline"

## Construct a [`radialGradient`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/radialgradient) element.
radialGradient : List Attribute, List Node -> Node
radialGradient = element "radialGradient"

## Construct a [`rect`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect) element.
rect : List Attribute, List Node -> Node
rect = element "rect"

## Construct a [`script`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/script) element.
script : List Attribute, List Node -> Node
script = element "script"

## Construct a [`set`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/set) element.
set : List Attribute, List Node -> Node
set = element "set"

## Construct a [`stop`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/stop) element.
stop : List Attribute, List Node -> Node
stop = element "stop"

## Construct a [`style`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/style) element.
style : List Attribute, List Node -> Node
style = element "style"

## Construct a [`svg`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/svg) element.
svg : List Attribute, List Node -> Node
svg = element "svg"

## Construct a [`switch`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/switch) element.
switch : List Attribute, List Node -> Node
switch = element "switch"

## Construct a [`symbol`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/symbol) element.
symbol : List Attribute, List Node -> Node
symbol = element "symbol"

## Construct a [`text`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text) element.
textElement : List Attribute, List Node -> Node
textElement = element "text"

## Construct a [`textPath`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/textpath) element.
textPath : List Attribute, List Node -> Node
textPath = element "textPath"

## Construct a [`title`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/title) element.
title : List Attribute, List Node -> Node
title = element "title"

## Construct a [`tspan`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/tspan) element.
tspan : List Attribute, List Node -> Node
tspan = element "tspan"

## Construct an [`use`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/use) element.
use : List Attribute, List Node -> Node
use = element "use"

## Construct a [`view`](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/view) element.
view : List Attribute, List Node -> Node
view = element "view"
