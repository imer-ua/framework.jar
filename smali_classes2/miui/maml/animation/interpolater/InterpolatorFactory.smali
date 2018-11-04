.class public Lmiui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 15
    .param p0, "easeType"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x0

    const/4 v12, -0x1

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 13
    return-object v14

    .line 16
    :cond_0
    const/16 v11, 0x28

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 17
    .local v6, "leftBracket":I
    const/16 v11, 0x29

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 18
    .local v8, "rightBracket":I
    const/4 v2, 0x0

    .line 19
    .local v2, "firstParam":F
    const/4 v9, 0x0

    .line 20
    .local v9, "secondParam":F
    const/4 v4, 0x0

    .line 21
    .local v4, "hasFirstParam":Z
    const/4 v5, 0x0

    .line 22
    .local v5, "hasSecondParam":Z
    if-eq v6, v12, :cond_2

    if-eq v8, v12, :cond_2

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 26
    .local v7, "params":Ljava/lang/String;
    move-object v3, v7

    .line 27
    .local v3, "firstParamStr":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 28
    .local v10, "secondParamStr":Ljava/lang/String;
    const-string/jumbo v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, "comma":I
    if-eq v0, v12, :cond_1

    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v11, 0x0

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 32
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 35
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 36
    if-eqz v5, :cond_2

    .line 37
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 44
    .end local v0    # "comma":I
    .end local v3    # "firstParamStr":Ljava/lang/String;
    .end local v7    # "params":Ljava/lang/String;
    .end local v10    # "secondParamStr":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string/jumbo v11, "BackEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 45
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>()V

    return-object v11

    .line 39
    .restart local v0    # "comma":I
    .restart local v3    # "firstParamStr":Ljava/lang/String;
    .restart local v7    # "params":Ljava/lang/String;
    .restart local v10    # "secondParamStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "InterpolatorFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parse error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    .end local v0    # "comma":I
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "firstParamStr":Ljava/lang/String;
    .end local v7    # "params":Ljava/lang/String;
    .end local v10    # "secondParamStr":Ljava/lang/String;
    :cond_3
    const-string/jumbo v11, "BackEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 47
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>()V

    return-object v11

    .line 48
    :cond_4
    const-string/jumbo v11, "BackEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 49
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 50
    :cond_5
    const-string/jumbo v11, "BackEaseIn"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v4, :cond_6

    .line 51
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    return-object v11

    .line 52
    :cond_6
    const-string/jumbo v11, "BackEaseOut"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v4, :cond_7

    .line 53
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    return-object v11

    .line 54
    :cond_7
    const-string/jumbo v11, "BackEaseInOut"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v4, :cond_8

    .line 55
    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    return-object v11

    .line 56
    :cond_8
    const-string/jumbo v11, "BounceEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 57
    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    return-object v11

    .line 58
    :cond_9
    const-string/jumbo v11, "BounceEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 59
    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    return-object v11

    .line 60
    :cond_a
    const-string/jumbo v11, "BounceEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 61
    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 62
    :cond_b
    const-string/jumbo v11, "CircEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 63
    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    return-object v11

    .line 64
    :cond_c
    const-string/jumbo v11, "CircEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 65
    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    return-object v11

    .line 66
    :cond_d
    const-string/jumbo v11, "CircEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 67
    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 68
    :cond_e
    const-string/jumbo v11, "CubicEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 69
    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    return-object v11

    .line 70
    :cond_f
    const-string/jumbo v11, "CubicEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 71
    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-object v11

    .line 72
    :cond_10
    const-string/jumbo v11, "CubicEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 73
    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 74
    :cond_11
    const-string/jumbo v11, "ElasticEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 75
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>()V

    return-object v11

    .line 76
    :cond_12
    const-string/jumbo v11, "ElasticEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 77
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>()V

    return-object v11

    .line 78
    :cond_13
    const-string/jumbo v11, "ElasticEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 79
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 80
    :cond_14
    const-string/jumbo v11, "ElasticEaseIn"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    if-eqz v5, :cond_15

    .line 81
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    return-object v11

    .line 82
    :cond_15
    const-string/jumbo v11, "ElasticEaseOut"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    if-eqz v5, :cond_16

    .line 83
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    return-object v11

    .line 84
    :cond_16
    const-string/jumbo v11, "ElasticEaseInOut"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    if-eqz v5, :cond_17

    .line 85
    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    return-object v11

    .line 86
    :cond_17
    const-string/jumbo v11, "ExpoEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 87
    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    return-object v11

    .line 88
    :cond_18
    const-string/jumbo v11, "ExpoEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 89
    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    return-object v11

    .line 90
    :cond_19
    const-string/jumbo v11, "ExpoEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 91
    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 92
    :cond_1a
    const-string/jumbo v11, "QuadEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 93
    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    return-object v11

    .line 94
    :cond_1b
    const-string/jumbo v11, "QuadEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 95
    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    return-object v11

    .line 96
    :cond_1c
    const-string/jumbo v11, "QuadEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 97
    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 98
    :cond_1d
    const-string/jumbo v11, "QuartEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 99
    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    return-object v11

    .line 100
    :cond_1e
    const-string/jumbo v11, "QuartEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 101
    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    return-object v11

    .line 102
    :cond_1f
    const-string/jumbo v11, "QuartEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 103
    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 104
    :cond_20
    const-string/jumbo v11, "QuintEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 105
    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    return-object v11

    .line 106
    :cond_21
    const-string/jumbo v11, "QuintEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 107
    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    return-object v11

    .line 108
    :cond_22
    const-string/jumbo v11, "QuintEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 109
    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 110
    :cond_23
    const-string/jumbo v11, "SineEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 111
    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    return-object v11

    .line 112
    :cond_24
    const-string/jumbo v11, "SineEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 113
    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    return-object v11

    .line 114
    :cond_25
    const-string/jumbo v11, "SineEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 115
    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    return-object v11

    .line 116
    :cond_26
    const-string/jumbo v11, "Linear"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_27

    .line 117
    new-instance v11, Lmiui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    return-object v11

    .line 119
    :cond_27
    return-object v14
.end method
