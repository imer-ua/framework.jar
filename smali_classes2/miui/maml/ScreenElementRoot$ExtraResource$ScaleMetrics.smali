.class Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleMetrics"
.end annotation


# static fields
.field private static final synthetic -miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

.field mDensity:I

.field mScale:F

.field mScreenWidth:I

.field mSizeType:I

.field final synthetic this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method private static synthetic -getmiui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->values()[Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

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

.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V
    .locals 1
    .param p1, "this$1"    # Lmiui/maml/ScreenElementRoot$ExtraResource;

    .prologue
    .line 774
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 774
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 8
    .param p1, "this$1"    # Lmiui/maml/ScreenElementRoot$ExtraResource;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 777
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 779
    :try_start_0
    const-string/jumbo v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, "info":[Ljava/lang/String;
    invoke-static {}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->-getmiui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 782
    :pswitch_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 783
    iget v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {v4}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x1e0

    div-int/lit16 v4, v4, 0xf0

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 785
    array-length v4, v1

    if-le v4, v3, :cond_0

    .line 786
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 827
    .end local v1    # "info":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ScreenElementRoot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "format error of string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "invalid format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 790
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "info":[Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 791
    iget v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 v4, v4, 0xf0

    div-int/lit16 v4, v4, 0x1e0

    invoke-static {v4}, Lmiui/maml/ResourceManager;->retranslateDensity(I)I

    move-result v4

    iput v4, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 793
    array-length v4, v1

    if-le v4, v3, :cond_0

    .line 794
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    goto :goto_0

    .line 799
    :pswitch_2
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, "metrics":[Ljava/lang/String;
    const/4 v5, 0x0

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 801
    array-length v5, v2

    if-ne v5, v3, :cond_5

    .line 802
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string/jumbo v6, "sw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 803
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 804
    iget v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 v5, v5, 0xf0

    div-int/lit16 v5, v5, 0x1e0

    invoke-static {v5}, Lmiui/maml/ResourceManager;->retranslateDensity(I)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 821
    :cond_1
    :goto_1
    array-length v5, v1

    if-le v5, v3, :cond_2

    .line 822
    array-length v5, v1

    if-ne v5, v4, :cond_7

    :goto_2
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 824
    :cond_2
    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->onParseInfo([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 806
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string/jumbo v6, "den"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 807
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 808
    iget v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {v5}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x1e0

    div-int/lit16 v5, v5, 0xf0

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    goto :goto_1

    .line 811
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 812
    :cond_5
    array-length v5, v2

    if-lt v5, v4, :cond_6

    .line 813
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 814
    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 815
    array-length v5, v2

    if-ne v5, v7, :cond_1

    .line 816
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Lmiui/maml/ScreenElementRoot$ExtraResource;->-wrap0(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    goto :goto_1

    .line 819
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    move v3, v4

    .line 822
    goto/16 :goto_2

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onParseInfo([Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # [Ljava/lang/String;

    .prologue
    .line 833
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScaleMetrics sw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " den:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sizeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 839
    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
