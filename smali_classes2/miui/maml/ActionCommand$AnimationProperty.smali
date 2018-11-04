.class Lmiui/maml/ActionCommand$AnimationProperty;
.super Lmiui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationProperty$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues:[I = null

.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mPlayParams:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty;->-miui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty;->-miui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->values()[Lmiui/maml/ActionCommand$AnimationProperty$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lmiui/maml/ActionCommand$AnimationProperty;->-miui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "targetObj"    # Lmiui/maml/util/Variable;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1251
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$PropertyCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    .line 1252
    const-string/jumbo v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    const-string/jumbo v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1256
    :cond_2
    const-string/jumbo v0, "resume"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1257
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0

    .line 1258
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "play("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1259
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    .line 1260
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x5

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    .line 1261
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1262
    const-string/jumbo v0, "ActionCommand"

    const-string/jumbo v1, "bad expression format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1265
    :cond_4
    sget-object v0, Lmiui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    iput-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    goto :goto_0
.end method


# virtual methods
.method public doPerform()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 1271
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationProperty;->-getmiui-maml-ActionCommand$AnimationProperty$TypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mType:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1270
    :goto_0
    return-void

    .line 1273
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    goto :goto_0

    .line 1276
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_0

    .line 1279
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_0

    .line 1282
    :pswitch_3
    const-wide/16 v2, 0x0

    .line 1283
    .local v2, "startTime":J
    const-wide/16 v4, -0x1

    .line 1284
    .local v4, "endTime":J
    const/4 v6, 0x0

    .line 1285
    .local v6, "isLoop":Z
    const/4 v7, 0x0

    .line 1286
    .local v7, "isDelay":Z
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1287
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v10

    if-nez v0, :cond_6

    move-wide v0, v8

    :goto_1
    double-to-long v2, v0

    .line 1289
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v11, :cond_1

    .line 1290
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v11

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_2
    double-to-long v4, v0

    .line 1293
    :cond_1
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v12, :cond_3

    .line 1294
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    if-nez v0, :cond_8

    :cond_2
    const/4 v6, 0x0

    .line 1296
    :cond_3
    :goto_3
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_5

    .line 1297
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    :cond_4
    const/4 v7, 0x0

    .line 1299
    :cond_5
    :goto_4
    iget-object v1, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual/range {v1 .. v7}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_0

    .line 1287
    :cond_6
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_1

    .line 1290
    :cond_7
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_2

    .line 1294
    :cond_8
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    .line 1297
    :cond_9
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lmiui/maml/data/Expression;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    .line 1271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
