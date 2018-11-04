.class Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
.super Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Resource"
.end annotation


# static fields
.field private static final synthetic -miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

.field mPath:Ljava/lang/String;

.field final synthetic this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method private static synthetic -getmiui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

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
    sput-object v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->-miui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues:[I

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
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/ScreenElementRoot$ExtraResource;

    .prologue
    .line 846
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 2
    .param p1, "this$1"    # Lmiui/maml/ScreenElementRoot$ExtraResource;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .prologue
    .line 849
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->this$1:Lmiui/maml/ScreenElementRoot$ExtraResource;

    .line 850
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 851
    invoke-static {}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->-getmiui-maml-ScreenElementRoot$ExtraResource$MetricsTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 849
    :goto_0
    return-void

    .line 853
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "den"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 856
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onParseInfo([Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # [Ljava/lang/String;

    .prologue
    .line 862
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 861
    return-void

    .line 862
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
