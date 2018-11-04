.class public Lmiui/maml/elements/TextScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# static fields
.field private static final synthetic -miui-maml-elements-ScreenElement$AlignSwitchesValues:[I = null

.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x2d

.field private static final PADDING:I = 0x32

.field private static final RAW_CRLF:Ljava/lang/String; = "\\n"

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mColorParser:Lmiui/maml/util/ColorParser;

.field private mFontScaleEnabled:Z

.field protected mFormatter:Lmiui/maml/util/TextFormatter;

.field private mLayoutWidth:F

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColorParser:Lmiui/maml/util/ColorParser;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSizeExpression:Lmiui/maml/data/Expression;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextHeightVar:Lmiui/maml/data/IndexedVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextSize:F

.field private mTextWidth:F

.field private mTextWidthVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-elements-ScreenElement$AlignSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/elements/TextScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/elements/TextScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/elements/ScreenElement$Align;->values()[Lmiui/maml/elements/ScreenElement$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lmiui/maml/elements/TextScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 50
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 55
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 83
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    .line 99
    invoke-direct {p0, p1}, Lmiui/maml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 97
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    .line 329
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 330
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-static {}, Lmiui/maml/elements/TextScreenElement;->-getmiui-maml-elements-ScreenElement$AlignSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 341
    :goto_0
    return-object v0

    .line 332
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 335
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 338
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 12
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 103
    if-nez p1, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    .line 107
    .local v6, "vars":Lmiui/maml/data/Variables;
    iget-boolean v7, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v7, :cond_1

    .line 108
    new-instance v7, Lmiui/maml/data/IndexedVariable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "text_width"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v11}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/data/IndexedVariable;

    .line 109
    new-instance v7, Lmiui/maml/data/IndexedVariable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "text_height"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v11}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/data/IndexedVariable;

    .line 111
    :cond_1
    iget-object v7, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {v6, p1, v7}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/TextFormatter;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    .line 112
    iget-object v7, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {v6, p1, v7}, Lmiui/maml/util/ColorParser;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    .line 113
    const-string/jumbo v7, "size"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    .line 114
    const-string/jumbo v7, "marqueeSpeed"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8}, Lmiui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 115
    const-string/jumbo v7, "spacingMult"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v7, v8}, Lmiui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 116
    const-string/jumbo v7, "spacingAdd"

    invoke-virtual {p0, p1, v7, v10}, Lmiui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 117
    const-string/jumbo v7, "marqueeGap"

    const/4 v8, 0x2

    invoke-virtual {p0, p1, v7, v8}, Lmiui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 118
    const-string/jumbo v7, "multiLine"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 119
    const-string/jumbo v7, "enableFontScale"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    .line 120
    const-string/jumbo v7, "fontFamily"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "fontFamily":Ljava/lang/String;
    const-string/jumbo v7, "fontPath"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "fontPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 123
    const-string/jumbo v7, "fontStyle"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/elements/TextScreenElement;->parseFontStyle(Ljava/lang/String;)I

    move-result v4

    .line 124
    .local v4, "fontStyle":I
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 140
    .end local v4    # "fontStyle":I
    :cond_2
    :goto_0
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ScreenElement;->scale(D)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    const-string/jumbo v7, "shadowRadius"

    invoke-virtual {p0, p1, v7, v10}, Lmiui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 145
    const-string/jumbo v7, "shadowDx"

    invoke-virtual {p0, p1, v7, v10}, Lmiui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 146
    const-string/jumbo v7, "shadowDy"

    invoke-virtual {p0, p1, v7, v10}, Lmiui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 147
    const-string/jumbo v7, "shadowColor"

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {v6, p1, v7, v8}, Lmiui/maml/util/ColorParser;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    .line 148
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v8, p0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    iget v9, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v10, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 102
    return-void

    .line 125
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 126
    const/4 v5, 0x0

    .line 128
    .local v5, "typeface":Landroid/graphics/Typeface;
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 132
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :goto_1
    if-eqz v5, :cond_2

    .line 133
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 129
    .restart local v5    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TextScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "create typeface from asset fail :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    const-string/jumbo v7, "bold"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 137
    .local v0, "bold":Z
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 138
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/util/TypefaceUtils;->replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_0
.end method

.method private static parseFontStyle(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    return v1

    .line 154
    :cond_1
    const-string/jumbo v0, "bold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_2
    const-string/jumbo v0, "italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    const/4 v0, 0x2

    return v0

    .line 158
    :cond_3
    const-string/jumbo v0, "bold_italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    const/4 v0, 0x3

    return v0

    .line 161
    :cond_4
    return v1
.end method

.method private updateTextSize()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    .line 321
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    if-eqz v0, :cond_0

    .line 322
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getFontScale()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    .line 324
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 318
    :cond_1
    return-void
.end method

.method private updateTextWidth()V
    .locals 6

    .prologue
    .line 299
    const/4 v3, 0x0

    iput v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 300
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 301
    iget-boolean v3, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "lines":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 304
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 305
    .local v2, "w":F
    iget v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 306
    iput v2, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 303
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "w":F
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 313
    :cond_2
    iget-boolean v3, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v3, :cond_3

    .line 314
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/data/IndexedVariable;

    iget v4, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    float-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ScreenElement;->descale(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 298
    :cond_3
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    return-void

    .line 169
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAlpha()I

    move-result v7

    invoke-static {v4, v7}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v9

    invoke-virtual {v3, v4, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v21

    .line 174
    .local v21, "width":F
    const/4 v3, 0x0

    cmpl-float v3, v21, v3

    if-ltz v3, :cond_8

    const/16 v19, 0x1

    .line 175
    .local v19, "specifyWidth":Z
    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, v21, v3

    if-ltz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v3, v21, v3

    if-lez v3, :cond_2

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    move/from16 v21, v0

    .line 179
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getHeight()F

    move-result v15

    .line 180
    .local v15, "height":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v17

    .line 181
    .local v17, "lineHeight":F
    const/4 v3, 0x0

    cmpg-float v3, v15, v3

    if-gez v3, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 184
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lmiui/maml/elements/ScreenElement;->getLeft(FF)F

    move-result v22

    .line 185
    .local v22, "x":F
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lmiui/maml/elements/ScreenElement;->getTop(FF)F

    move-result v23

    .line 187
    .local v23, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 189
    const/4 v12, 0x0

    .line 190
    .local v12, "extendLeft":F
    const/4 v13, 0x0

    .line 191
    .local v13, "extendRight":F
    const/4 v14, 0x0

    .line 192
    .local v14, "extendTop":F
    const/4 v11, 0x0

    .line 193
    .local v11, "extendBottom":F
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 194
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    sub-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 195
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 196
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    sub-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 197
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 200
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    if-eqz v19, :cond_5

    const/4 v12, 0x0

    .line 202
    .end local v12    # "extendLeft":F
    :cond_5
    if-eqz v19, :cond_6

    const/4 v13, 0x0

    .line 201
    .end local v13    # "extendRight":F
    :cond_6
    add-float v3, v21, v13

    .line 202
    add-float v4, v15, v11

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_7

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    .line 206
    .local v10, "count":I
    const/4 v3, 0x1

    if-ne v10, v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v3, :cond_9

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    .line 208
    .local v5, "start":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 209
    .local v6, "end":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v20

    .line 210
    .local v20, "top":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v16

    .line 211
    .local v16, "left":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    add-float v7, v16, v3

    move/from16 v0, v20

    int-to-float v3, v0

    add-float v8, v17, v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 212
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    .line 213
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    add-float v18, v3, v4

    .line 214
    .local v18, "nextPos":F
    cmpg-float v3, v18, v21

    if-gez v3, :cond_7

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v4, v16, v18

    move/from16 v0, v20

    int-to-float v7, v0

    add-float v7, v7, v17

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v10    # "count":I
    .end local v16    # "left":F
    .end local v18    # "nextPos":F
    .end local v20    # "top":I
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    return-void

    .line 174
    .end local v11    # "extendBottom":F
    .end local v14    # "extendTop":F
    .end local v15    # "height":F
    .end local v17    # "lineHeight":F
    .end local v19    # "specifyWidth":Z
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "specifyWidth":Z
    goto/16 :goto_0

    .line 219
    .restart local v10    # "count":I
    .restart local v11    # "extendBottom":F
    .restart local v14    # "extendTop":F
    .restart local v15    # "height":F
    .restart local v17    # "lineHeight":F
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected doTick(J)V
    .locals 19
    .param p1, "currentTime"    # J

    .prologue
    .line 242
    sget-object v18, Lmiui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v18

    .line 243
    :try_start_0
    invoke-super/range {p0 .. p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v18

    .line 245
    return-void

    .line 247
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 249
    .local v14, "preText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 252
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v18

    .line 253
    return-void

    .line 256
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    .line 257
    .local v15, "preTextSize":F
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextSize()V

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    cmpl-float v4, v15, v4

    if-eqz v4, :cond_a

    :cond_2
    const/16 v16, 0x1

    .line 260
    .local v16, "textChanged":Z
    :goto_0
    if-eqz v16, :cond_3

    .line 261
    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 264
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v17

    .line 265
    .local v17, "width":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v4, v4, v17

    if-lez v4, :cond_b

    const/4 v13, 0x1

    .line 266
    .local v13, "marquee":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v4, v17, v4

    if-lez v4, :cond_c

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 268
    .local v12, "layoutWidth":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_5

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_7

    .line 269
    :cond_5
    move-object/from16 v0, p0

    iput v12, v0, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    .line 270
    new-instance v4, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v8

    .line 271
    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    const/4 v11, 0x0

    .line 270
    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 273
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v4, :cond_6

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    float-to-double v6, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lmiui/maml/elements/ScreenElement;->descale(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 276
    :cond_6
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 279
    :cond_7
    if-eqz v13, :cond_9

    .line 281
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v4, v5

    if-nez v4, :cond_d

    .line 283
    const/high16 v4, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 290
    :cond_8
    :goto_3
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    .line 291
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit v18

    .line 295
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v4, :cond_e

    const/16 v4, 0x2d

    :goto_4
    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 241
    return-void

    .line 259
    .end local v12    # "layoutWidth":F
    .end local v13    # "marquee":Z
    .end local v16    # "textChanged":Z
    .end local v17    # "width":F
    :cond_a
    const/16 v16, 0x0

    .restart local v16    # "textChanged":Z
    goto/16 :goto_0

    .line 265
    .restart local v17    # "width":F
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "marquee":Z
    goto/16 :goto_1

    .line 266
    :cond_c
    move/from16 v12, v17

    .restart local v12    # "layoutWidth":F
    goto/16 :goto_2

    .line 285
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v6, v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    sub-long v8, p1, v8

    mul-long/2addr v6, v8

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 286
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    neg-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    .line 287
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 242
    .end local v12    # "layoutWidth":F
    .end local v13    # "marquee":Z
    .end local v14    # "preText":Ljava/lang/String;
    .end local v15    # "preTextSize":F
    .end local v16    # "textChanged":Z
    .end local v17    # "width":F
    :catchall_0
    move-exception v4

    monitor-exit v18

    throw v4

    .line 295
    .restart local v12    # "layoutWidth":F
    .restart local v13    # "marquee":Z
    .restart local v14    # "preText":Ljava/lang/String;
    .restart local v15    # "preTextSize":F
    .restart local v16    # "textChanged":Z
    .restart local v17    # "width":F
    :cond_e
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 234
    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 236
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 232
    return-void
.end method

.method protected getColor()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .line 395
    .local v0, "height":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 396
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 398
    :cond_0
    return v0
.end method

.method protected getShadowColor()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    return-object v1

    .line 368
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v1}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 370
    const-string/jumbo v1, "\\n"

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-boolean v1, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v1, :cond_1

    .line 372
    const-string/jumbo v1, "\n"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_1
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    .line 389
    .local v0, "width":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    .end local v0    # "width":F
    :cond_0
    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 227
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 346
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 347
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x2d

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 345
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 355
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0, p1}, Lmiui/maml/util/TextFormatter;->setParams([Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 358
    return-void
.end method
