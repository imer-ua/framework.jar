.class Lmiui/maml/ActionCommand$FieldCommand;
.super Lmiui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldCommand"
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "FieldCommand"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mFieldName:Ljava/lang/String;

.field private mIsSet:Z


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ActionCommand$FieldCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ActionCommand$FieldCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

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
    sput-object v0, Lmiui/maml/ActionCommand$FieldCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

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
    .line 1819
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$BaseMethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1820
    const-string/jumbo v1, "field"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 1821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FieldCommand, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 1822
    const-string/jumbo v1, "method"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1824
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    .line 1818
    :cond_0
    :goto_0
    return-void

    .line 1825
    :cond_1
    const-string/jumbo v1, "set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1826
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 8

    .prologue
    .line 1864
    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_0

    .line 1866
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->loadField()V

    .line 1869
    :cond_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    .line 1871
    :try_start_0
    invoke-static {}, Lmiui/maml/ActionCommand$FieldCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1863
    :cond_1
    :goto_0
    return-void

    .line 1874
    :pswitch_0
    iget-boolean v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    if-eqz v4, :cond_2

    .line 1875
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->prepareParams()V

    .line 1876
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1877
    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1890
    :catch_0
    move-exception v1

    .line 1891
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "ActionCommand"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1880
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v4, :cond_1

    .line 1881
    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1882
    .local v3, "returnValue":Ljava/lang/Object;
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v4, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1892
    .end local v3    # "returnValue":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 1893
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ActionCommand"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1894
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 1895
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "ActionCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Field target is null. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1871
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 1832
    invoke-super {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->init()V

    .line 1833
    invoke-static {}, Lmiui/maml/ActionCommand$FieldCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1831
    :cond_0
    :goto_0
    return-void

    .line 1836
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 1837
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->loadField()V

    goto :goto_0

    .line 1833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected loadField()V
    .locals 5

    .prologue
    .line 1845
    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1846
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    .line 1847
    .local v1, "target":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1848
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 1851
    .end local v1    # "target":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1853
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v3, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    :goto_0
    return-void

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1858
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    const-string/jumbo v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "class is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
