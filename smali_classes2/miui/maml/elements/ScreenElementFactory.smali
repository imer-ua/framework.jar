.class public Lmiui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;
    }
.end annotation


# instance fields
.field private mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    .locals 6
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "tag":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "Image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    new-instance v2, Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 30
    :cond_0
    const-string/jumbo v2, "Time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    new-instance v2, Lmiui/maml/elements/TimepanelScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 32
    :cond_1
    const-string/jumbo v2, "ImageNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 33
    const-string/jumbo v2, "ImageChars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 32
    if-eqz v2, :cond_3

    .line 34
    :cond_2
    new-instance v2, Lmiui/maml/elements/ImageNumberScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 35
    :cond_3
    const-string/jumbo v2, "Text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    new-instance v2, Lmiui/maml/elements/TextScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 37
    :cond_4
    const-string/jumbo v2, "DateTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 38
    new-instance v2, Lmiui/maml/elements/DateTimeScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 39
    :cond_5
    const-string/jumbo v2, "Button"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 40
    new-instance v2, Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 41
    :cond_6
    const-string/jumbo v2, "MusicControl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 42
    new-instance v2, Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 43
    :cond_7
    const-string/jumbo v2, "ElementGroup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 44
    const-string/jumbo v2, "Group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 43
    if-eqz v2, :cond_9

    .line 45
    :cond_8
    new-instance v2, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 46
    :cond_9
    const-string/jumbo v2, "Var"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 47
    new-instance v2, Lmiui/maml/elements/VariableElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 48
    :cond_a
    const-string/jumbo v2, "VarArray"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 49
    new-instance v2, Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 50
    :cond_b
    const-string/jumbo v2, "SpectrumVisualizer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 51
    new-instance v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 52
    :cond_c
    const-string/jumbo v2, "Slider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 53
    new-instance v2, Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 54
    :cond_d
    const-string/jumbo v2, "FramerateController"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 55
    new-instance v2, Lmiui/maml/elements/FramerateController;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 56
    :cond_e
    const-string/jumbo v2, "VirtualScreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 57
    new-instance v2, Lmiui/maml/elements/VirtualScreen;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 58
    :cond_f
    const-string/jumbo v2, "Line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 59
    new-instance v2, Lmiui/maml/elements/LineScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 60
    :cond_10
    const-string/jumbo v2, "Rectangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 61
    new-instance v2, Lmiui/maml/elements/RectangleScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 62
    :cond_11
    const-string/jumbo v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 63
    new-instance v2, Lmiui/maml/elements/EllipseScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 64
    :cond_12
    const-string/jumbo v2, "Circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 65
    new-instance v2, Lmiui/maml/elements/CircleScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 66
    :cond_13
    const-string/jumbo v2, "Arc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 67
    new-instance v2, Lmiui/maml/elements/ArcScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 68
    :cond_14
    const-string/jumbo v2, "Curve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 69
    new-instance v2, Lmiui/maml/elements/CurveScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CurveScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 70
    :cond_15
    const-string/jumbo v2, "List"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 71
    new-instance v2, Lmiui/maml/elements/ListScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ListScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 72
    :cond_16
    const-string/jumbo v2, "Paint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 73
    new-instance v2, Lmiui/maml/elements/PaintScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/PaintScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 74
    :cond_17
    const-string/jumbo v2, "Mirror"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 75
    new-instance v2, Lmiui/maml/elements/MirrorScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/MirrorScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 76
    :cond_18
    const-string/jumbo v2, "Window"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 77
    new-instance v2, Lmiui/maml/elements/WindowScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/WindowScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 78
    :cond_19
    const-string/jumbo v2, "Array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 79
    new-instance v2, Lmiui/maml/elements/ScreenElementArray;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 80
    :cond_1a
    const-string/jumbo v2, "WebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 81
    new-instance v2, Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 82
    :cond_1b
    const-string/jumbo v2, "Layer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 83
    new-instance v2, Lmiui/maml/elements/LayerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/LayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 84
    :cond_1c
    const-string/jumbo v2, "GLLayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 85
    new-instance v2, Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/GLLayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 86
    :cond_1d
    const-string/jumbo v2, "CanvasDrawer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 87
    new-instance v2, Lmiui/maml/elements/CanvasDrawerElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CanvasDrawerElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 88
    :cond_1e
    iget-object v2, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    if-eqz v2, :cond_1f

    .line 89
    iget-object v2, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    invoke-interface {v2, p1, p2}, Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    const-string/jumbo v2, "ScreenElementFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to create element."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1f
    return-object v5
.end method

.method public getCallback()Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-object v0
.end method

.method public setCallback(Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .locals 0
    .param p1, "factoryCallback"    # Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    .prologue
    .line 18
    iput-object p1, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 17
    return-void
.end method
