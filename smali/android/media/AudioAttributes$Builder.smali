.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 427
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 429
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 430
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 427
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 429
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 430
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 450
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get3(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 451
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get0(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 452
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get1(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 453
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get2(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 449
    return-void
.end method


# virtual methods
.method public addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 571
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 575
    :goto_0
    return-object p0

    .line 573
    :cond_1
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 585
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 463
    new-instance v0, Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes;)V

    .line 464
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set1(Landroid/media/AudioAttributes;I)I

    .line 465
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set6(Landroid/media/AudioAttributes;I)I

    .line 466
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set4(Landroid/media/AudioAttributes;I)I

    .line 467
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set2(Landroid/media/AudioAttributes;I)I

    .line 468
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set5(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 469
    const-string/jumbo v1, ";"

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set3(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 471
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set0(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 473
    :cond_0
    return-object v0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "preset"    # I

    .prologue
    .line 663
    packed-switch p1, :pswitch_data_0

    .line 678
    :pswitch_0
    const-string/jumbo v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid capture preset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-object p0

    .line 675
    :pswitch_1
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "contentType"    # I

    .prologue
    .line 533
    packed-switch p1, :pswitch_data_0

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 544
    :goto_0
    return-object p0

    .line 539
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 554
    const v0, -0x7ffffe01

    and-int/2addr p1, v0

    .line 555
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 556
    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "preset"    # I

    .prologue
    .line 692
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_0

    .line 693
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 695
    :cond_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 699
    :goto_0
    return-object p0

    .line 694
    :cond_1
    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0
.end method

.method public setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 610
    packed-switch p1, :pswitch_data_0

    .line 643
    const-string/jumbo v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_0
    invoke-static {p1}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 646
    return-object p0

    .line 612
    :pswitch_0
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 615
    :pswitch_1
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 618
    :pswitch_2
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 621
    :pswitch_3
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 624
    :pswitch_4
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 627
    :pswitch_5
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 630
    :pswitch_6
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 633
    :pswitch_7
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 634
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_0

    .line 637
    :pswitch_8
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 640
    :pswitch_9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "usage"    # I

    .prologue
    .line 496
    packed-switch p1, :pswitch_data_0

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 518
    :goto_0
    return-object p0

    .line 513
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
