.class public Landroid/media/audiofx/DiracSound;
.super Landroid/media/audiofx/AudioEffect;
.source "DiracSound.java"


# static fields
.field public static final DIRACSOUND_HEADSET_EM001:I = 0xf

.field public static final DIRACSOUND_HEADSET_EM006:I = 0x12

.field public static final DIRACSOUND_HEADSET_EM007:I = 0x10

.field public static final DIRACSOUND_HEADSET_EM013:I = 0x13

.field public static final DIRACSOUND_HEADSET_EM015:I = 0x14

.field public static final DIRACSOUND_HEADSET_EM017:I = 0x15

.field public static final DIRACSOUND_HEADSET_EM018:I = 0x16

.field public static final DIRACSOUND_HEADSET_EM019:I = 0x17

.field public static final DIRACSOUND_HEADSET_EM303:I = 0xd

.field public static final DIRACSOUND_HEADSET_EM304:I = 0xe

.field public static final DIRACSOUND_HEADSET_GENERAL:I = 0x5

.field public static final DIRACSOUND_HEADSET_GENERAL_INEAR:I = 0x6

.field public static final DIRACSOUND_HEADSET_HM004:I = 0x11

.field public static final DIRACSOUND_HEADSET_MEP100:I = 0x1

.field public static final DIRACSOUND_HEADSET_MEP200:I = 0x2

.field public static final DIRACSOUND_HEADSET_MK101:I = 0x7

.field public static final DIRACSOUND_HEADSET_MK301:I = 0x8

.field public static final DIRACSOUND_HEADSET_MK303:I = 0x9

.field public static final DIRACSOUND_HEADSET_MO701:I = 0xa

.field public static final DIRACSOUND_HEADSET_MR102:I = 0xb

.field public static final DIRACSOUND_HEADSET_NONE:I = 0x0

.field public static final DIRACSOUND_HEADSET_PHD:I = 0xc

.field public static final DIRACSOUND_HEADSET_PISTON100:I = 0x3

.field public static final DIRACSOUND_HEADSET_PISTON200:I = 0x4

.field public static final DIRACSOUND_MODE_MOVIE:I = 0x1

.field public static final DIRACSOUND_MODE_MOVIE_CINEMA:I = 0x0

.field public static final DIRACSOUND_MODE_MOVIE_CINIMA:I = 0x0

.field public static final DIRACSOUND_MODE_MOVIE_STUDIO:I = 0x1

.field public static final DIRACSOUND_MODE_MUSIC:I = 0x0

.field private static final DIRACSOUND_PARAM_EQ_LEVEL:I = 0x2

.field private static final DIRACSOUND_PARAM_HEADSET_TYPE:I = 0x1

.field private static final DIRACSOUND_PARAM_HIFI_MODE:I = 0x8

.field private static final DIRACSOUND_PARAM_MODE:I = 0x3

.field private static final DIRACSOUND_PARAM_MOVIE:I = 0x5

.field private static final DIRACSOUND_PARAM_MOVIE_MODE:I = 0x7

.field private static final DIRACSOUND_PARAM_MUSIC:I = 0x4

.field private static final DIRACSOUND_PARAM_SPEAKER_STEREO_MODE:I = 0x9

.field private static final EFFECT_TYPE_DIRACSOUND:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "DiracSound"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "e069d9e0-8329-11df-9168-0002a5d5c51b"

    .line 20
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/DiracSound;->EFFECT_TYPE_DIRACSOUND:Ljava/util/UUID;

    .line 16
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I

    .prologue
    .line 65
    sget-object v0, Landroid/media/audiofx/DiracSound;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/DiracSound;->EFFECT_TYPE_DIRACSOUND:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 64
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
    .line 127
    const/4 v0, 0x1

    .line 128
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 130
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 132
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

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "level":F
    new-array v2, v5, [I

    .line 150
    .local v2, "param":[I
    const/16 v4, 0xa

    new-array v3, v4, [B

    .line 152
    .local v3, "value":[B
    const/4 v4, 0x0

    aput v5, v2, v4

    .line 153
    const/4 v4, 0x1

    aput p1, v2, v4

    .line 154
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([I[B)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 156
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 157
    .local v1, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 159
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
    .line 77
    const/4 v0, 0x3

    .line 78
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 80
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 82
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
    .line 111
    const/4 v0, 0x5

    .line 112
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 114
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 116
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
    .line 171
    const/4 v0, 0x7

    .line 172
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 174
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 176
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
    .line 94
    const/4 v0, 0x4

    .line 95
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 97
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 99
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getSpeakerStereoMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 188
    const/16 v0, 0x9

    .line 189
    .local v0, "param":I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 191
    .local v1, "value":[I
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 193
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
    .line 121
    const/4 v0, 0x1

    .line 122
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 120
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
    .line 198
    const/16 v0, 0x8

    .line 200
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 197
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

    .line 137
    new-array v1, v4, [I

    .line 139
    .local v1, "param":[I
    const/4 v3, 0x0

    aput v4, v1, v3

    .line 140
    const/4 v3, 0x1

    aput p1, v1, v3

    .line 141
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "levelStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 143
    .local v2, "value":[B
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 136
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
    .line 70
    const/4 v0, 0x3

    .line 72
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 69
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
    .line 104
    const/4 v0, 0x5

    .line 106
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 103
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
    .line 164
    const/4 v0, 0x7

    .line 166
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 163
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
    .line 87
    const/4 v0, 0x4

    .line 89
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 86
    return-void
.end method

.method public setSpeakerStereoMode(I)V
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
    .line 181
    const/16 v0, 0x9

    .line 183
    .local v0, "param":I
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 180
    return-void
.end method
