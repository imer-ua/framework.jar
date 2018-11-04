.class abstract Lmiui/maml/ActionCommand$TargetCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I


# instance fields
.field protected mLogStr:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field protected mTargetIndex:Lmiui/maml/data/Expression;

.field protected mTargetName:Ljava/lang/String;

.field protected mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->values()[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

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

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1321
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1322
    const-string/jumbo v1, "target"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1323
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1327
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "targetIndex"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    .line 1328
    const-string/jumbo v1, "targetType"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1330
    const-string/jumbo v1, "element"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1331
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    .line 1337
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 1320
    return-void

    .line 1332
    :cond_2
    const-string/jumbo v1, "var"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1333
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_0

    .line 1334
    :cond_3
    const-string/jumbo v1, "ctor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1335
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_0
.end method


# virtual methods
.method protected getTarget()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1373
    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1398
    return-object v4

    .line 1375
    :pswitch_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ElementGroup;->getChild(I)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    return-object v1

    .line 1378
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v1

    .line 1381
    :pswitch_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1382
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1383
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_3

    .line 1384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1385
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1387
    :cond_1
    const-string/jumbo v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target with index is not an Array variable, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1388
    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iput-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    .line 1394
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_2
    return-object v4

    .line 1392
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_3
    return-object v0

    .line 1373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1342
    invoke-super {p0}, Lmiui/maml/ActionCommand;->init()V

    .line 1343
    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1345
    :pswitch_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1346
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 1347
    .local v0, "targetElement":Lmiui/maml/elements/ScreenElement;
    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 1348
    if-nez v0, :cond_1

    .line 1349
    const-string/jumbo v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "could not find ScreenElement target, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1350
    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 1351
    invoke-static {v0}, Lmiui/maml/elements/ElementGroup;->isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1352
    const-string/jumbo v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target with index is not an ArrayGroup, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1353
    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 1352
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iput-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    goto :goto_0

    .line 1360
    .end local v0    # "targetElement":Lmiui/maml/elements/ScreenElement;
    :pswitch_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1362
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    .line 1364
    :cond_2
    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "MethodCommand, type=var, empty target name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
