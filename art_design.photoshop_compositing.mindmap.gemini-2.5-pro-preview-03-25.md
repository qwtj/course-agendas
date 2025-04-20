# Photoshop Compositing #Overview #DigitalArt
Photoshop Compositing involves combining elements from multiple images into a single, cohesive image. This process is fundamental in various fields like advertising, film post-production, concept art, and fine art photography, enabling the creation of realistic or fantastical scenes that couldn't be captured in a single photograph.

## Core Concepts & Fundamentals #Basics #Theory
Understanding the foundational principles is crucial before diving into complex techniques.
### Understanding Layers & Stacking Order #Layers #Organization
Layers are the backbone of compositing, allowing non-destructive editing by separating elements. The order layers are stacked determines visibility and interaction.
### Resolution & Image Size #Pixels #Quality
Matching the resolution and understanding the implications of image size are vital for maintaining quality and realism. Composites often require high-resolution source images.
### Color Spaces & Bit Depth #ColorManagement #Accuracy
Working in appropriate color spaces (e.g., sRGB, Adobe RGB) and understanding bit depth (8-bit vs. 16-bit) affects color accuracy and editing flexibility.
### File Formats #PSD #TIFF #JPEG
Choosing the right file format (PSD for working files, TIFF for quality, JPEG for web) impacts quality and editability.
### Non-Destructive Workflow #Workflow #BestPractice
Utilizing techniques like Smart Objects, Layer Masks, and Adjustment Layers to allow for changes without permanently altering pixel data. [18, 10]

## Selection & Masking Techniques #Selections #Masking #Isolation
Accurately isolating elements from their original backgrounds is a primary step in compositing. [1, 7, 26]
### Basic Selection Tools #Marquee #Lasso #MagicWand
Tools like Marquee, Lasso, and Magic Wand for simple selections. [24, 21, 16]
### Advanced Selection Tools #QuickSelection #ObjectSelection #SelectSubject
More sophisticated tools leveraging AI for faster and often more accurate initial selections. [1, 7, 20, 21]
### Pen Tool #Paths #Precision
Creating precise, editable vector paths for clean, hard-edged selections. Often considered essential for professional results. [7, 25]
### Select and Mask Workspace #RefineEdge #Hair #Fur
A dedicated workspace for refining selections, especially complex edges like hair and fur, using tools like the Refine Edge Brush. [7, 24, 31]
### Channel Masking #Channels #ComplexSelections
Using color channel information (Red, Green, Blue) to create highly detailed masks based on contrast, excellent for intricate subjects like trees or hair. [24]
### Luminosity Masking #Luminance #TonalSelections
Creating masks based on the brightness values within an image, useful for targeted adjustments and selections based on light levels.
### Layer Masks #NonDestructive #PixelMasks
Pixel-based masks that allow for non-destructive hiding and revealing of layer content. Editable with brushes. [3, 7]
### Vector Masks #Vector #SharpEdges
Resolution-independent masks created with vector shapes or the Pen Tool, ideal for maintaining sharp, clean edges. [7]
### Clipping Masks #Clipping #LayerControl
Using the content of one layer to mask the layer(s) above it. Useful for applying adjustments or textures to specific areas. [2, 7, 23]

## Layer Management & Organization #Layers #Workflow #Efficiency
Keeping the layer stack organized is essential for complex composites. [3]
### Layer Naming & Coloring #Organization #Clarity
Consistently naming layers and assigning colors for easy identification.
### Layer Groups #Grouping #Hierarchy
Organizing related layers into folders (groups) to simplify the Layers panel and manage complex scenes. [3]
### Smart Objects #NonDestructive #Flexibility
Encapsulating layer content to allow for non-destructive transformations, filtering, and easy replacement of source content. [7, 10, 33]
### Adjustment Layers #ColorCorrection #TonalAdjustments #NonDestructive
Applying color and tonal adjustments non-destructively to layers below or specifically clipped layers. [3, 2]
### Layer Blending Modes #Blending #Effects
Controlling how layers interact with layers beneath them (e.g., Multiply, Screen, Overlay, Soft Light) for various creative and corrective effects. [3, 10, 23]

## Transformation & Perspective Matching #Transform #Perspective #Scale
Ensuring elements fit realistically within the scene in terms of size, angle, and perspective. [1, 22]
### Free Transform (Scale, Rotate, Skew, Distort, Perspective) #Manipulation #Resizing
The primary tool for basic resizing, rotating, and altering the shape of layer content. [1]
### Warp Tool #FineTuning #ShapeAdjustment
Applying a grid to bend and reshape elements more organically. [3]
### Puppet Warp #OrganicWarping #CharacterPosing
Placing pins to distort specific parts of an object while keeping others fixed, useful for posing characters or adjusting organic shapes.
### Vanishing Point Filter #PerspectivePlanes #GridAlignment
Defining perspective planes to easily clone, paint, and transform elements in correct perspective.
### Perspective Matching Techniques #HorizonLine #VanishingPoints
Identifying the horizon line and vanishing points in the background plate and aligning added elements accordingly. [22, 31]
### Matching Focal Length & Lens Distortion #CameraMatching #Realism
Considering the lens used for source images and ensuring consistency in apparent focal length and distortion between elements. [22]

## Color & Tone Integration #ColorMatching #TonalMatching #Realism
Making disparate elements look like they belong in the same scene by matching their color and tonal values. [1, 6, 12, 14, 22]
### Sampling Background Colors #Reference #ColorMatching
Using tools like the Eyedropper to sample highlight, midtone, and shadow colors from the background for reference. [2]
### Curves Adjustment Layer #Precision #ColorTone
A powerful tool for adjusting overall brightness, contrast, and individual color channels with precision. Often used with clipping masks for targeted adjustments. [2, 5, 11, 33]
### Levels Adjustment Layer #BrightnessContrast #Histograms
Adjusting highlights, midtones, and shadows using sliders based on the image histogram. [11]
### Color Balance Adjustment Layer #ColorCasting #Temperature
Adjusting the overall mixture of colors in shadows, midtones, and highlights to correct color casts or match color temperature. [2]
### Hue/Saturation Adjustment Layer #ColorShift #SaturationControl
Adjusting the hue, saturation, and lightness of specific color ranges or the entire layer.
### Match Color Command #AutomatedMatching #QuickAdjust
An automated tool that attempts to match the color characteristics of one layer or image to another. Can be a good starting point but often needs refinement. [14, 25]
### Using Solid Color Fill Layers (Color Blend Mode) #GlobalTint #ColorWash
Applying a solid color fill layer set to the 'Color' blend mode at low opacity to unify the colors of underlying layers. [12]
### Using Blurred Background Layers (Soft Light/Overlay) #AmbientColor #LightBleed
Duplicating the background, blurring it significantly, and using blend modes like Soft Light or Overlay clipped to the subject to simulate ambient light color bouncing onto the subject. [12]
### Check Layers (Luminosity, Saturation, Color) #Analysis #Evaluation
Using specific adjustment layers (e.g., Solid Color set to Color blend mode, Hue/Saturation set to Saturation or Luminosity) to visually evaluate and match brightness, saturation, and color consistency across elements. [11, 22, 31]

## Lighting & Shadow Integration #Lighting #Shadows #Depth #Realism
Creating believable lighting and shadows is paramount for realism. [1, 3, 5, 10, 13, 15, 19]
### Identifying Light Source Direction & Quality #Analysis #Consistency
Determining the direction, intensity (hard vs. soft), and color of the main light source(s) in the background plate and ensuring added elements match. [13, 15]
### Creating Cast Shadows #Grounding #Realism
Generating shadows cast by objects onto surfaces. Techniques include:
    #### Painting Shadows (New Layer, Multiply Blend Mode) #ManualShadows #Brushwork
    #### Using Layer Styles (Drop Shadow) #QuickShadows #LayerEffects
    #### Transforming Subject Shape #ShapeBasedShadows #Distortion
### Creating Form Shadows #Volume #Dimension
Adding shadows on the object itself to define its form according to the light source. Often done with Curves or Levels adjustment layers and masks. [33]
### Matching Shadow Hardness & Density #Consistency #Realism
Ensuring the softness/hardness and darkness of shadows on added elements matches the shadows in the background. [13, 15]
### Adding Highlights & Rim Lighting #Accents #Separation
Painting or using adjustments to add highlights where light would hit the object, including rim lights for separation from the background. [1, 5, 30]
### Using Blend Modes for Light Effects (Screen, Linear Dodge) #Glows #Highlights
Employing blend modes like Screen or Linear Dodge (Add) to create glows, light wraps, or intense highlights. [10, 15]
### Simulating Light Wrap #Integration #EdgeBlending
Creating a subtle effect where background light appears to wrap around the edges of the foreground subject, enhancing integration. [15, 31]
### Global Lighting Adjustments #Unification #Mood
Applying overall adjustments (e.g., using Curves, Color Lookup Tables) to unify the lighting across the entire composite and establish mood.

## Adding Effects & Atmosphere #Atmosphere #Effects #Depth #Mood
Incorporating elements that enhance realism, depth, and mood. [1, 18, 19]
### Atmospheric Perspective (Haze) #DepthCue #AerialPerspective
Simulating the effect where distant objects appear lower in contrast, less saturated, and potentially shifted in color (often towards blue). [31]
### Adding Fog, Smoke, or Mist #Environment #Mood
Using brushes, stock photos, or filters to introduce atmospheric elements.
### Lens Flares & Light Effects #OpticalEffects #Realism
Adding realistic or stylized lens flares and light streaks, often using filters or stock elements. [1]
### Depth of Field Simulation #Focus #Blur
Using blur filters (Gaussian Blur, Lens Blur) selectively (often with masks or depth maps) to mimic camera focus effects. [33]
### Adding Textures & Overlays #SurfaceDetail #Grit #Unification
Using texture images (e.g., grunge, paper, fabric) with blending modes (Overlay, Soft Light, Multiply) to add surface detail or unify disparate elements. [3, 4, 18]
### Film Grain & Noise #Texture #Unification
Adding subtle noise or film grain can help blend elements from different sources and add a photographic quality. [33]

## Workflow & Best Practices #Workflow #Organization #Efficiency
Establishing an efficient and flexible workflow. [1, 4, 18, 19, 26]
### Planning & Concept Development #Previsualization #IdeaGeneration
Sketching or outlining the composite idea before starting in Photoshop. [27, 29]
### Sourcing High-Quality Assets #StockPhotos #Photography
Finding or shooting source images with appropriate resolution, lighting, and perspective. [22, 27]
### File Organization #ProjectManagement #Assets
Keeping source files, PSDs, and exports organized in project folders. [3, 27]
### Utilizing Non-Destructive Techniques #Flexibility #Revisions
Prioritizing Adjustment Layers, Smart Objects, Layer Masks, etc., for maximum editability. [7, 10]
### Regular Saving & Versioning #Backup #Safety
Saving work frequently and potentially keeping different versions (e.g., using Save As).
### Critical Evaluation #SelfCorrection #Refinement
Stepping back to evaluate the composite for inconsistencies in perspective, lighting, color, and scale. Using check layers helps. [22]

## Advanced Techniques #Advanced #Specialization #ProLevel
Techniques for tackling more complex compositing challenges. [11, 19, 28, 29]
### Complex Extractions (Hair, Fur, Translucent Objects) #DifficultMasking #Refinement
Employing advanced masking techniques (Channels, Refine Mask, specialized plugins) for very challenging subjects. [7, 30]
### Frequency Separation for Retouching within Composites #Retouching #Integration
Using frequency separation to retouch skin or surfaces on added elements to match the texture of the background plate. [18]
### Advanced Blending with Blend-If Sliders #TargetedBlending #HighlightsShadows
Using the "Blend If" sliders in the Layer Style options for sophisticated blending based on luminosity values. [23, 31]
### Displacement Maps #TextureMapping #SurfaceWrap
Using the Displace filter with a displacement map to make an element realistically conform to an uneven surface (e.g., text on wrinkled cloth). [31]
### Integrating 3D Renders #CGI #VFX #MixedMedia
Combining photographic elements with renders from 3D software, requiring careful matching of lighting, perspective, and camera properties. [29]
### Creating Custom Brushes #Efficiency #SpecificEffects
Designing custom brushes for specific effects like hair, fur, foliage, smoke, or textural elements. [1, 30, 31]
### Using Plugins & Extensions #ThirdParty #Enhancements
Leveraging specialized Photoshop plugins for tasks like masking, color grading, or effects generation. [11, 29]

## Output & Finalization #Export #Delivery #Presentation
Preparing the final composite for its intended use.
### Sharpening for Output #Clarity #DetailEnhancement
Applying final sharpening appropriate for the viewing medium (screen vs. print) using techniques like Smart Sharpen or High Pass filter. [18]
### Color Profile Conversion #ColorAccuracy #DestinationMedia
Converting the image to the appropriate color profile (e.g., sRGB for web, CMYK for print - consulting with printer advised).
### Resizing for Specific Mediums #Web #Print #Resolution
Adjusting image dimensions and resolution based on whether it's for web display, print, etc.
### Final Quality Check #Proofing #Review
Performing a final review at 100% zoom and overall view to catch any remaining errors or inconsistencies.
