# I. Foundations of Color Theory

## Understanding the Color Wheel

### Primary Colors
*   Red, Yellow, Blue. Understanding their unique properties and inability to be created by mixing other colors.
*   Example: Paint or digital swatches of pure red, yellow, and blue.

### Secondary Colors
*   Creating orange (red + yellow), green (blue + yellow), and violet (red + blue).
*   Example: Mixing paint or using a digital color picker to combine primary colors.

### Tertiary Colors
*   Mixing primary and secondary colors, e.g., red-violet, blue-green, yellow-orange.
*   Example: Color charts illustrating the nuances between various tertiary colors.

## Color Properties

### Hue
*   Understanding hue as the pure color, identified by its name (e.g., red, blue, green).
*   Example: Identifying the hue of different objects in a photo.

### Saturation
*   Describing saturation as the intensity or purity of a color, from dull to vibrant.
*   Example: Adjusting the saturation slider in an image editor and observing the effect.

### Value (Brightness)
*   Defining value as the lightness or darkness of a color.
*   Example: Converting a color image to grayscale and analyzing the value differences.

# II. Blend Modes: Basic Concepts

## Introduction to Blend Modes

### Definition and Purpose
*   Understanding blend modes as algorithms that determine how two layers interact visually.
*   Concept: A layer's blend mode affects how its pixels combine with the pixels of the layers beneath it.

### Underlying Math (Simplified)
*   Overview of blend mode calculations, emphasizing that each mode uses a specific formula.
*   Note: Avoid detailed mathematical derivations. Focus on the practical effects.

### Identifying Key Terms
*   **Base Color:** The original color of the underlying layer.
*   **Blend Color:** The color of the applied layer.
*   **Result Color:** The color resulting from the blend operation.

## Common Blend Mode Categories

### Normal Modes
*   `Normal`: Basic blending; the blend color completely obscures the base color.
*   `Dissolve`: Creates a speckled effect based on opacity.
*   Example: Applying these modes to a solid color layer over a photograph.

### Darken Modes
*   Understanding how darken modes typically result in darker resultant colors.

### Lighten Modes
*   Understanding how lighten modes typically result in lighter resultant colors.

### Contrast Modes
*   Understanding how contrast modes typically increase contrast.

### Composite Modes
* Understanding how composite modes change color based on hue, saturation, luminosity.

# III. Blend Modes in Detail: Darken Group

## Darken
*   Description: Replaces the base color with the blend color only if the blend color is darker.
*   Example: Using `Darken` mode to apply dark shadows to an image.

## Multiply
*   Description: Multiplies the base color by the blend color, resulting in a darker color.
*   Example: Simulating shadows and creating a vintage effect on photos.
    ```
    //Simplified Example:
    Result Color = (Base Color * Blend Color) / 255
    ```

## Color Burn
*   Description: Darkens the base color to reflect the blend color by increasing the contrast.
*   Example: Creating a harsh, saturated effect on photos.

## Darker Color
*   Description: Selects the darker of the base and blend colors.
*   Example: A subtle way to darken an image without significantly altering the color.

# IV. Blend Modes in Detail: Lighten Group

## Lighten
*   Description: Replaces the base color with the blend color only if the blend color is lighter.
*   Example: Adding subtle highlights to an image.

## Screen
*   Description: Inverts the colors, multiplies them, and then inverts the result. Lighter effect.
*   Example: Simulating light sources and creating dreamy effects.
    ```
    //Simplified Example:
    Result Color = 255 - ((255 - Base Color) * (255 - Blend Color) / 255)
    ```

## Color Dodge
*   Description: Brightens the base color to reflect the blend color by decreasing the contrast.
*   Example: Creating a glowing or overexposed effect.

## Lighter Color
*   Description: Selects the lighter of the base and blend colors.
*   Example: Subtly lightening an image without significantly altering the color.

# V. Blend Modes in Detail: Contrast Group

## Overlay
*   Description: Multiplies or screens the colors, depending on the base color.
*   Example: Adding contrast and texture to an image.

## Soft Light
*   Description: Darkens or lightens the colors, depending on the blend color.
*   Example: Creating subtle lighting effects and enhancing details.

## Hard Light
*   Description: Multiplies or screens the colors, depending on the blend color, with a harsher effect than Overlay.
*   Example: Simulating strong light sources and adding sharp contrast.

## Vivid Light
*   Description: Burns or dodges the colors by increasing or decreasing contrast.
*   Example: Creating dramatic lighting effects and adding intense color.

## Linear Light
*   Description: Burns or dodges the colors by adjusting brightness.
*   Example: Adding bright highlights and deep shadows.

## Pin Light
*   Description: Replaces the colors, depending on whether the blend color is lighter or darker.
*   Example: Adding a combination of bright and dark areas.

## Hard Mix
*   Description: Reduces the colors to red, green, blue, black, and white.
*   Example: Creating a posterized or graphic effect.

# VI. Blend Modes in Detail: Composite Group

## Difference
*   Description: Subtracts the blend color from the base color or vice versa, depending on which has the greater brightness value.
*   Example: Creating inverted or abstract effects.

## Exclusion
*   Description: Similar to Difference but with less contrast.
*   Example: Creating subtle inverted effects.

## Subtract
*   Description: Subtracts the blend color from the base color.
*   Example: Darkening an image.

## Divide
*   Description: Divides the base color by the blend color.
*   Example: Brightening an image.

# VII. Blend Modes in Detail: Component Group

## Hue
*   Description: Replaces the hue of the base color with the hue of the blend color.
*   Example: Changing the color scheme of an image while preserving the luminance and saturation.

## Saturation
*   Description: Replaces the saturation of the base color with the saturation of the blend color.
*   Example: Adjusting the color intensity of an image.

## Color
*   Description: Replaces the hue and saturation of the base color with the hue and saturation of the blend color.
*   Example: Tinting an image with a specific color.

## Luminosity
*   Description: Replaces the luminosity of the base color with the luminosity of the blend color.
*   Example: Adjusting the brightness without affecting the hue or saturation.

# VIII. Practical Applications and Project Ideas

## Applying Blend Modes to Textures
*   Task: Layering textures (e.g., grunge, wood grain) over images using blend modes to add depth.
*   Example: Using `Overlay` or `Multiply` blend modes for realistic texture integration.

## Creating Lighting Effects
*   Task: Simulating light sources (e.g., spotlights, glows) using blend modes.
*   Example: Using `Screen` or `Color Dodge` to create a glowing effect.

## Color Correction and Grading
*   Task: Adjusting the overall color and tone of an image using blend modes.
*   Example: Using `Color` blend mode to tint an image or `Luminosity` to adjust brightness.

## Photo Manipulation and Compositing
*   Task: Combining multiple images seamlessly using blend modes.
*   Example: Blending skies, adding shadows, and creating surreal effects.

## Design Project: Digital Collage
*   Create a digital collage using a variety of images and textures.
*   Experiment with different blend modes to achieve a cohesive and visually appealing final product.

## Experimenting with Opacity and Fill
*  Understanding the difference between Layer Opacity vs. Layer Fill
*  Example: Changing Opacity affects the layer as a whole, while Fill only affects the layer's contents.
