.class public Lcom/android/internal/widget/PointerLocationViewInjector;
.super Ljava/lang/Object;
.source "PointerLocationViewInjector.java"


# static fields
.field private static final CUSTOM_TOUCH_STYLE_ENABLED:Ljava/lang/String; = "debug.customtouchstyle.enabled"

.field private static final CUSTOM_TOUCH_STYLE_OVAL_SIZE:Ljava/lang/String; = "debug.customtouchstyle.ovalsize"

.field private static final CUSTOM_TOUCH_STYLE_PAINT_COLOR:Ljava/lang/String; = "debug.customtouchstyle.paintcolor"

.field private static final TAG:Ljava/lang/String;

.field private static sCustomTouchStyleEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-class v0, Lcom/android/internal/widget/PointerLocationViewInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/PointerLocationViewInjector;->TAG:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "debug.customtouchstyle.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/PointerLocationViewInjector;->sCustomTouchStyleEnabled:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 18
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "major"    # F
    .param p4, "minor"    # F
    .param p5, "angle"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 29
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v10

    .line 30
    .local v10, "oldStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 32
    .local v9, "oldColor":I
    move/from16 v5, p3

    .line 33
    .local v5, "customMajor":F
    move/from16 v6, p4

    .line 35
    .local v6, "customMinor":F
    invoke-static {}, Lcom/android/internal/widget/PointerLocationViewInjector;->isCustomTouchStyleEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 36
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    const-string/jumbo v13, "debug.customtouchstyle.paintcolor"

    const/4 v14, -0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 38
    .local v4, "customColor":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_0

    .line 39
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    :cond_0
    const-string/jumbo v13, "debug.customtouchstyle.ovalsize"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 42
    .local v12, "ovalSize":Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 53
    .end local v4    # "customColor":I
    .end local v12    # "ovalSize":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->save(I)I

    .line 54
    const/high16 v13, 0x43340000    # 180.0f

    mul-float v13, v13, p5

    float-to-double v14, v13

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v16

    double-to-float v13, v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v13, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 55
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 56
    .local v11, "ovalRect":Landroid/graphics/RectF;
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v6, v13

    sub-float v13, p1, v13

    iput v13, v11, Landroid/graphics/RectF;->left:F

    .line 57
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v6, v13

    add-float v13, v13, p1

    iput v13, v11, Landroid/graphics/RectF;->right:F

    .line 58
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v5, v13

    sub-float v13, p2, v13

    iput v13, v11, Landroid/graphics/RectF;->top:F

    .line 59
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v5, v13

    add-float v13, v13, p2

    iput v13, v11, Landroid/graphics/RectF;->bottom:F

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    .line 63
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    return-void

    .line 44
    .end local v11    # "ovalRect":Landroid/graphics/RectF;
    .restart local v4    # "customColor":I
    .restart local v12    # "ovalSize":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 45
    .local v7, "customSize":F
    move v5, v7

    .line 46
    move v6, v7

    goto :goto_0

    .line 47
    .end local v7    # "customSize":F
    :catch_0
    move-exception v8

    .line 48
    .local v8, "e":Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/android/internal/widget/PointerLocationViewInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isCustomTouchStyleEnabled()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/internal/widget/PointerLocationViewInjector;->sCustomTouchStyleEnabled:Z

    return v0
.end method
