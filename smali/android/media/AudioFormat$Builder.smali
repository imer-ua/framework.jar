.class public Landroid/media/AudioFormat$Builder;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 806
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 807
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 808
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 809
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 814
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFormat;)V
    .locals 1
    .param p1, "af"    # Landroid/media/AudioFormat;

    .prologue
    const/4 v0, 0x0

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 806
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 807
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 808
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 809
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 822
    invoke-static {p1}, Landroid/media/AudioFormat;->-get2(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 823
    invoke-static {p1}, Landroid/media/AudioFormat;->-get4(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 824
    invoke-static {p1}, Landroid/media/AudioFormat;->-get1(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 825
    invoke-static {p1}, Landroid/media/AudioFormat;->-get0(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 826
    invoke-static {p1}, Landroid/media/AudioFormat;->-get3(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 821
    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 835
    new-instance v0, Landroid/media/AudioFormat;

    const/16 v1, 0x7bc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioFormat;-><init>(ILandroid/media/AudioFormat;)V

    .line 836
    .local v0, "af":Landroid/media/AudioFormat;
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set2(Landroid/media/AudioFormat;I)I

    .line 839
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set4(Landroid/media/AudioFormat;I)I

    .line 840
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set1(Landroid/media/AudioFormat;I)I

    .line 841
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set0(Landroid/media/AudioFormat;I)I

    .line 842
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set3(Landroid/media/AudioFormat;I)I

    .line 843
    return-object v0
.end method

.method public setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "channelIndexMask"    # I

    .prologue
    .line 975
    if-nez p1, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid zero channel index mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    if-eqz v0, :cond_1

    .line 978
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 979
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mismatched channel count for index mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 980
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 979
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 983
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 984
    return-object p0
.end method

.method public setChannelMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "channelMask"    # I

    .prologue
    .line 922
    if-nez p1, :cond_0

    .line 923
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid zero channel mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    if-eqz v0, :cond_1

    .line 925
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mismatched channel count for mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 927
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 926
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 930
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 931
    return-object p0
.end method

.method public setEncoding(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 860
    sparse-switch p1, :sswitch_data_0

    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :sswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 884
    :goto_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 885
    return-object p0

    .line 878
    :sswitch_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    goto :goto_0

    .line 860
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0xd -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method public setSampleRate(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 997
    const/16 v0, 0xfa0

    if-lt p1, v0, :cond_0

    const v0, 0x2ee00

    if-le p1, v0, :cond_1

    .line 998
    :cond_0
    if-eqz p1, :cond_1

    .line 999
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1002
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1003
    return-object p0
.end method
