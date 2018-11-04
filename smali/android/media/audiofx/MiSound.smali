.class public Landroid/media/audiofx/MiSound;
.super Landroid/media/audiofx/AudioEffect;
.source "MiSound.java"


# static fields
.field private static final EFFECT_TYPE_MISOUND:Ljava/util/UUID;

.field public static final MISOUND_HEADSET_EM001:I = 0xf

.field public static final MISOUND_HEADSET_EM006:I = 0x12

.field public static final MISOUND_HEADSET_EM007:I = 0x10

.field public static final MISOUND_HEADSET_EM013:I = 0x13

.field public static final MISOUND_HEADSET_EM015:I = 0x14

.field public static final MISOUND_HEADSET_EM017:I = 0x15

.field public static final MISOUND_HEADSET_EM018:I = 0x16

.field public static final MISOUND_HEADSET_EM019:I = 0x17

.field public static final MISOUND_HEADSET_EM303:I = 0xd

.field public static final MISOUND_HEADSET_EM304:I = 0xe

.field public static final MISOUND_HEADSET_GENERAL:I = 0x5

.field public static final MISOUND_HEADSET_GENERAL_INEAR:I = 0x6

.field public static final MISOUND_HEADSET_HM004:I = 0x11

.field public static final MISOUND_HEADSET_MEP100:I = 0x1

.field public static final MISOUND_HEADSET_MEP200:I = 0x2

.field public static final MISOUND_HEADSET_MK101:I = 0x7

.field public static final MISOUND_HEADSET_MK301:I = 0x8

.field public static final MISOUND_HEADSET_MK303:I = 0x9

.field public static final MISOUND_HEADSET_MO701:I = 0xa

.field public static final MISOUND_HEADSET_MR102:I = 0xb

.field public static final MISOUND_HEADSET_NONE:I = 0x0

.field public static final MISOUND_HEADSET_PHD:I = 0xc

.field public static final MISOUND_HEADSET_PISTON100:I = 0x3

.field public static final MISOUND_HEADSET_PISTON200:I = 0x4

.field public static final MISOUND_MODE_MOVIE:I = 0x1

.field public static final MISOUND_MODE_MOVIE_CINEMA:I = 0x0

.field public static final MISOUND_MODE_MOVIE_CINIMA:I = 0x0

.field public static final MISOUND_MODE_MOVIE_STUDIO:I = 0x1

.field public static final MISOUND_MODE_MUSIC:I = 0x0

.field private static final MISOUND_PARAM_EQ_LEVEL:I = 0x2

.field private static final MISOUND_PARAM_HEADSET_TYPE:I = 0x1

.field private static final MISOUND_PARAM_HIFI_MODE:I = 0x8

.field private static final MISOUND_PARAM_MODE:I = 0x3

.field private static final MISOUND_PARAM_MOVIE:I = 0x5

.field private static final MISOUND_PARAM_MOVIE_MODE:I = 0x7

.field private static final MISOUND_PARAM_MUSIC:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiSound"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "5b8e36a5-144a-4c38-b1d7-0002a5d5c51b"

    .line 20
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_MISOUND:Ljava/util/UUID;

    .line 16
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I

    .prologue
    .line 64
    sget-object v0, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/MiSound;->EFFECT_TYPE_MISOUND:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 63
    return-void
.end method


# virtual methods
.method public getHeadsetType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 129
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 131
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getLevel(I)F
    .locals 6
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "level":F
    new-array v2, v5, [I

    .line 149
    .local v2, "param":[I
    const/16 v4, 0xa

    new-array v3, v4, [B

    .line 151
    .local v3, "value":[B
    const/4 v4, 0x0

    aput v5, v2, v4

    .line 152
    const/4 v4, 0x1

    aput p1, v2, v4

    .line 153
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([I[B)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 155
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 156
    .local v1, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 158
    return v0
.end method

.method public getMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x3

    .line 77
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 79
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 81
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getMovie()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x5

    .line 111
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 113
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 115
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getMovieMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x7

    .line 171
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 173
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 175
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getMusic()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x4

    .line 94
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 96
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 98
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public setHeadsetType(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    .line 121
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 119
    return-void
.end method

.method public setHifiMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 180
    const/16 v0, 0x8

    .line 182
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 179
    return-void
.end method

.method public setLevel(IF)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "level"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 136
    new-array v1, v4, [I

    .line 138
    .local v1, "param":[I
    const/4 v3, 0x0

    aput v4, v1, v3

    .line 139
    const/4 v3, 0x1

    aput p1, v1, v3

    .line 140
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "levelStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 142
    .local v2, "value":[B
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 135
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x3

    .line 71
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 68
    return-void
.end method

.method public setMovie(I)V
    .locals 2
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x5

    .line 105
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 102
    return-void
.end method

.method public setMovieMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x7

    .line 165
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 162
    return-void
.end method

.method public setMusic(I)V
    .locals 2
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x4

    .line 88
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 85
    return-void
.end method
