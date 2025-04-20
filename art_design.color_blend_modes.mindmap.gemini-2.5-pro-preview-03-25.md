# Color Blend Modes #Overview #DigitalImaging #Graphics
An overview of how colors from different layers or elements interact and combine based on specified algorithms.

## Fundamentals of Blending #Basics #Theory #Concepts
Core concepts required to understand how blend modes operate.

### Layers Concept #Layers #StackingOrder
Blending typically occurs between two or more stacked layers or elements.
The bottom layer is usually the 'Base', and the layer(s) above are the 'Blend' layers.

### Terminology #Definitions #KeyTerms
#### Base Color #BaseLayer
The original color in the underlying layer(s).
#### Blend Color #BlendLayer
The color in the layer to which the blend mode is applied.
#### Result Color #Output #Combination
The final color produced after applying the blend mode algorithm.
#### Opacity #Transparency #Alpha
Overall transparency of the blend layer. Affects the *entire* layer content before blending.
#### Fill Opacity #Fill #LayerStyles
Transparency applied only to the layer's content, *not* its layer styles. Some blend modes react differently to Fill vs Opacity (e.g., the "Special 8" modes).

## Mathematical Foundations #Mathematics #Algorithms #Formulas
The underlying calculations defining how blend modes combine color values.
Most operations are performed component-wise (Red, Green, Blue channels independently). Color values are typically normalized (e.g., 0.0 to 1.0 or 0 to 255).

### General Structure #Formula #Calculation
Result = BlendModeFunction(Base Color, Blend Color)

### Component-wise Operations #RGB #Channels
Calculations are usually applied to R, G, and B channels separately.

### Value Clamping #Range #Limits
Resulting color component values are often clamped to the valid range (e.g., 0-255 or 0.0-1.0).

## Blend Mode Categories #Groups #Classification #Organization
Standard grouping of blend modes based on their general effect, commonly seen in software like Adobe Photoshop and defined by W3C standards.

### Normal Group #Standard #Basic
Modes that don't perform complex interactions or are utility modes.
#### Normal #Default #Replace
The standard mode; blend layer pixels simply replace base layer pixels according to opacity.
#### Dissolve #Dither #Noise
Randomly replaces base pixels with blend pixels based on opacity, creating a dithered effect. Works primarily with transparency.

### Darken Group #Darkening #Shadows
Modes that generally result in darker colors. White in the blend layer has no effect.
#### Darken #Min #ComponentWise
Selects the darker color of the base or blend pixel (component-wise). Result <= Base, Result <= Blend.
#### Multiply #Burn #Shadows #Product
Multiplies the base color by the blend color (after normalizing). Always results in a darker or equal color. Great for shadows and darkening images realistically. Black blend = Black result. White blend = Base color.
#### Color Burn #ContrastDarken #Saturate
Darkens the base color to reflect the blend color by increasing contrast. More saturated than Multiply. White blend has no effect.
#### Linear Burn #DarkerAdd #Subtract
Darkens the base color to reflect the blend color by decreasing brightness. Sums values and subtracts 1 (normalized). Darker than Multiply but less saturated than Color Burn. White blend has no effect.
#### Darker Color #Min #WholeColor
Compares the composite luminance of base and blend colors and selects the pixel with the lower luminance value. Not component-wise like 'Darken'.

### Lighten Group #Lightening #Highlights
Modes that generally result in lighter colors. Black in the blend layer has no effect.
#### Lighten #Max #ComponentWise
Selects the lighter color of the base or blend pixel (component-wise). Result >= Base, Result >= Blend.
#### Screen #Bleach #Highlights #InverseMultiply
Multiplies the inverse of the base and blend colors. Always results in a lighter or equal color. Great for highlights and brightening. Black blend = Base color. White blend = White result. The opposite of Multiply.
#### Color Dodge #ContrastLighten #Saturate
Lightens the base color to reflect the blend color by decreasing contrast. More saturated results than Screen. Black blend has no effect.
#### Linear Dodge (Add) #LighterAdd #Sum
Lightens the base color to reflect the blend color by increasing brightness. Sums the values. Lighter than Screen but less saturated than Color Dodge. Black blend has no effect.
#### Lighter Color #Max #WholeColor
Compares the composite luminance of base and blend colors and selects the pixel with the higher luminance value. Not component-wise like 'Lighten'.

### Contrast Group #Contrast #Midtones #Mixing
Modes that mix base and blend colors based on whether the blend color is darker or lighter than 50% gray. They often increase contrast. 50% gray blend has no effect.
#### Overlay #ScreenMultiply #MidtoneContrast
Combines Multiply and Screen. Multiplies dark areas, Screens light areas of the blend color. Preserves highlights and shadows of the base layer. Depends on base color.
#### Soft Light #GentleContrast #Diffuse
Applies a softer version of Overlay. Darkens or lightens based on blend color, but less intensely. Similar to shining a diffuse spotlight. Depends on base color.
#### Hard Light #HarshContrast #DirectLight
Combines Linear Burn and Linear Dodge. Screens dark areas, Multiplies light areas (opposite of Overlay). Results in harsher light. Depends on blend color.
#### Vivid Light #ExtremeContrast #DodgeBurn
Combines Color Burn and Color Dodge. Burns or dodges based on blend color being darker or lighter than 50% gray. Increases contrast more intensely than Overlay/Soft Light.
#### Linear Light #ExtremeLinearContrast #BurnDodge
Combines Linear Burn and Linear Dodge. Burns or dodges by decreasing/increasing brightness based on blend color. More extreme than Vivid Light.
#### Pin Light #ReplaceExtreme #Conditional
Replaces colors based on the blend color. If blend > 50% gray, replaces base pixels darker than blend. If blend < 50% gray, replaces base pixels lighter than blend.
#### Hard Mix #Posterize #ExtremeLimit
Adds component values. Results in only primary colors (R, G, B), white, or black. Creates a highly posterized look.

### Inversion / Cancellation Group #Difference #Comparative #Effects
Modes that create effects based on the differences between base and blend colors.
#### Difference #SubtractAbsolute #Invert
Subtracts the darker color from the lighter color for each component. White blend inverts the base color. Black blend has no effect. Stacking identical layers results in black.
#### Exclusion #SofterDifference #LowerContrast
Similar to Difference but with lower contrast. White blend inverts the base color. Black blend has no effect.
#### Subtract #Darken #Remove
Subtracts the blend color from the base color. Can result in black or very dark colors. Values below zero are clamped to black.
#### Divide #Lighten #BleachExtreme
Divides the base color by the blend color. Can result in very bright or white colors. Useful for correcting lens vignetting or uneven lighting when blend layer is a flat color sample of the undesired tint.

### Component Group #ColorAttributes #HSL
Modes that use components of the HSL (Hue, Saturation, Luminosity/Lightness) color model.
#### Hue #ColorTint #Angle
Uses the hue of the blend color with the saturation and luminosity of the base color.
#### Saturation #ColorIntensity #Grayness
Uses the saturation of the blend color with the hue and luminosity of the base color. Blending with a grayscale blend layer desaturates the base.
#### Color #HueSaturation #Painting
Uses the hue and saturation of the blend color with the luminosity of the base color. Preserves gray levels, useful for coloring monochrome images.
#### Luminosity #Brightness #Value
Uses the luminosity (brightness) of the blend color with the hue and saturation of the base color. The opposite effect of 'Color' mode.

### Special "8" Modes #FillOpacity #Advanced
These eight modes (Color Burn, Linear Burn, Color Dodge, Linear Dodge (Add), Vivid Light, Linear Light, Hard Mix, Difference) produce different results when layer Fill opacity is adjusted compared to adjusting layer Opacity. This provides additional creative control.

## Applications and Use Cases #PracticalUse #Examples #Workflow

### Photo Retouching and Enhancement #Photography #Editing
#### Correcting Exposure #BrightnessContrast
Using Screen/Multiply on duplicate layers, or Overlay/Soft Light for contrast.
#### Enhancing Color #SaturationVibrance
Using Overlay, Soft Light, or Color modes for color adjustments.
#### Dodging and Burning #HighlightsShadows
Using Overlay or Soft Light on layers filled with 50% gray.
#### Texture Application #Overlays #Materials
Applying textures (paper, grunge, fabric) using Overlay, Soft Light, Multiply, Screen.
#### Compositing Images #Combining #Merging
Integrating elements from different images realistically.

### Digital Painting and Illustration #Art #Painting
#### Adding Lighting and Shadows #Shading #Highlighting
Using Multiply for shadows, Screen/Color Dodge/Linear Dodge for highlights.
#### Coloring Line Art #Coloring #Flats
Using Multiply for line art layer over flat colors, or Color mode for painting under lines.
#### Creating Atmospheric Effects #Mood #Environment
Using Screen, Lighten, Overlay for fog, mist, glows.

### Graphic Design and Typography #Layout #TextEffects
#### Text Effects #Styling #Readability
Applying blend modes to text layers for integration or stylistic effects (e.g., Multiply for inset text, Screen for glow).
#### Background Effects #UI #WebDesign
Blending background images or patterns subtly.
#### Creating Abstract Designs #Experimental #Visuals
Combining shapes and colors with various blend modes for unique looks.

### Web Design (CSS) #WebDev #Frontend #Styling
#### `mix-blend-mode` #ElementBlending
Blending entire HTML elements with elements behind them.
#### `background-blend-mode` #BackgroundBlending
Blending multiple background images/colors within the same element.

## Software Implementation and Standards #Tools #Compatibility #Platforms

### Adobe Photoshop #IndustryStandard #Raster
The most well-known implementation, originator of many modes. Includes the "Special 8".

### GIMP #OpenSource #Alternative
Offers a comparable set of blend modes, including legacy modes.

### Affinity Photo/Designer #Professional #Alternative
Modern implementations with standard blend modes.

### Procreate #iPad #PaintingApp
Popular painting app with a robust set of blend modes.

### Web Browsers (CSS/Canvas/SVG) #WebStandards #W3C
#### CSS (`mix-blend-mode`, `background-blend-mode`) #Styling #Layout
Standardized modes based largely on SVG/PDF specifications. Performance can be a consideration.
#### HTML Canvas API #Scripting #DynamicGraphics
Allows programmatic blending via `globalCompositeOperation`.
#### SVG (`feBlend`) #Vector #Filters
Provides blend filter primitives.

### Implementation Differences #Variations #Inconsistency
Minor variations in algorithms or color space handling can lead to slightly different results between applications.

## Advanced Techniques and Creative Uses #Tips #Tricks #Creative

### Chaining Blend Modes #LayerStacking #ComplexEffects
Using multiple layers with different blend modes stacked to achieve complex results.

### Blend Mode Pairs #Opposites #Workflow
Using complementary modes like Multiply/Screen or Color Burn/Color Dodge for specific effects.

### Blend If / Blend Ranges #ConditionalBlending #TargetedEffects
Advanced options (e.g., in Photoshop) to control blending based on the luminosity values of the blend or base layers.

### Adjustment Layers with Blend Modes #NonDestructive #Correction
Combining adjustment layers (Curves, Levels, Hue/Sat) with blend modes for targeted corrections or effects.

### Blend Modes for Masks #Masking #Selections
Using blend modes on layer masks or within mask calculations for sophisticated masking.

### Gradient Mapping with Blend Modes #ColorGrading #Stylization
Using gradient maps combined with blend modes like Color or Luminosity for unique color grading.

## Best Practices and Considerations #Guidelines #Tips #Performance

### Non-Destructive Workflow #Flexibility #Editing
Using blend modes on separate layers or adjustment layers rather than directly modifying pixels.

### Understanding Context #Purpose #Intent
Choosing blend modes based on the desired effect and the content of the layers.

### Experimentation #TrialAndError #Discovery
Blend modes are often best understood through experimentation.

### Performance Implications (Web) #CSS #Optimization
Heavy use of `mix-blend-mode` can impact browser rendering performance; use judiciously.

### Color Space Awareness #ColorManagement #Accuracy
Blend mode calculations can be affected by the document's color space (e.g., sRGB, Adobe RGB).

## History and Evolution #Origins #Development #Standards
Brief timeline and influences.

### Early Implementations #Pioneers #Photoshop
Development often attributed to early digital imaging software, notably Adobe Photoshop. Influences from traditional film compositing.
### Standardization (PDF, SVG, W3C) #StandardsBodies #Interoperability
Efforts to standardize blend mode definitions for consistent results across platforms, particularly for print (PDF) and web (SVG, CSS).
