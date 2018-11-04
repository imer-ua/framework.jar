.class public abstract Lmiui/maml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$ActionPerformCommand;,
        Lmiui/maml/ActionCommand$AnimationCommand;,
        Lmiui/maml/ActionCommand$AnimationProperty;,
        Lmiui/maml/ActionCommand$BaseMethodCommand;,
        Lmiui/maml/ActionCommand$BluetoothSwitchCommand;,
        Lmiui/maml/ActionCommand$ConditionCommand;,
        Lmiui/maml/ActionCommand$DataSwitchCommand;,
        Lmiui/maml/ActionCommand$DelayCommand;,
        Lmiui/maml/ActionCommand$ExternCommand;,
        Lmiui/maml/ActionCommand$FieldCommand;,
        Lmiui/maml/ActionCommand$IntentCommand;,
        Lmiui/maml/ActionCommand$LoopCommand;,
        Lmiui/maml/ActionCommand$MethodCommand;,
        Lmiui/maml/ActionCommand$ModeToggleHelper;,
        Lmiui/maml/ActionCommand$MultiCommand;,
        Lmiui/maml/ActionCommand$NotificationReceiver;,
        Lmiui/maml/ActionCommand$ObjVar;,
        Lmiui/maml/ActionCommand$OnOffCommandHelper;,
        Lmiui/maml/ActionCommand$PropertyCommand;,
        Lmiui/maml/ActionCommand$RingModeCommand;,
        Lmiui/maml/ActionCommand$SoundCommand;,
        Lmiui/maml/ActionCommand$StateTracker;,
        Lmiui/maml/ActionCommand$StatefulActionCommand;,
        Lmiui/maml/ActionCommand$TargetCommand;,
        Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;,
        Lmiui/maml/ActionCommand$VariableAssignmentCommand;,
        Lmiui/maml/ActionCommand$VariableBinderCommand;,
        Lmiui/maml/ActionCommand$VisibilityProperty;,
        Lmiui/maml/ActionCommand$WifiStateTracker;,
        Lmiui/maml/ActionCommand$WifiSwitchCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mScreenElement:Lmiui/maml/elements/ScreenElement;


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;)V
    .locals 0
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 2097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2098
    iput-object p1, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    .line 2097
    return-void
.end method

.method protected static create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;
    .locals 4
    .param p0, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2070
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2071
    :cond_0
    return-object v3

    .line 2074
    :cond_1
    new-instance v1, Lmiui/maml/util/Variable;

    invoke-direct {v1, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 2075
    .local v1, "targetObj":Lmiui/maml/util/Variable;
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2076
    invoke-static {p0, p1, p2}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v2

    return-object v2

    .line 2079
    :cond_2
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 2080
    .local v0, "property":Ljava/lang/String;
    const-string/jumbo v2, "RingMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2081
    new-instance v2, Lmiui/maml/ActionCommand$RingModeCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$RingModeCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    .line 2082
    :cond_3
    const-string/jumbo v2, "Wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2083
    new-instance v2, Lmiui/maml/ActionCommand$WifiSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$WifiSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    .line 2084
    :cond_4
    const-string/jumbo v2, "Data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2085
    new-instance v2, Lmiui/maml/ActionCommand$DataSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$DataSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    .line 2086
    :cond_5
    const-string/jumbo v2, "Bluetooth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2087
    new-instance v2, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    .line 2088
    :cond_6
    const-string/jumbo v2, "UsbStorage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2089
    new-instance v2, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object v2

    .line 2092
    :cond_7
    return-object v3
.end method

.method public static create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;
    .locals 14
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 2010
    if-nez p0, :cond_0

    .line 2011
    const/4 v10, 0x0

    return-object v10

    .line 2013
    :cond_0
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    const-string/jumbo v11, "condition"

    invoke-interface {p0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 2014
    .local v0, "condition":Lmiui/maml/data/Expression;
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    const-string/jumbo v11, "delayCondition"

    invoke-interface {p0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    .line 2015
    .local v1, "delayCondition":Lmiui/maml/data/Expression;
    const-string/jumbo v10, "delay"

    const-wide/16 v12, 0x0

    invoke-static {p0, v10, v12, v13}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2016
    .local v2, "delay":J
    const/4 v5, 0x0

    .line 2017
    .local v5, "ret":Lmiui/maml/ActionCommand;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 2018
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v10, "Command"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2019
    const-string/jumbo v10, "target"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2020
    .local v8, "target":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2021
    .local v9, "value":Ljava/lang/String;
    invoke-static {p1, v8, v9}, Lmiui/maml/ActionCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;

    move-result-object v5

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .line 2054
    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .local v6, "ret":Lmiui/maml/ActionCommand;
    :goto_0
    if-nez v6, :cond_f

    .line 2055
    const/4 v10, 0x0

    return-object v10

    .line 2022
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_1
    const-string/jumbo v10, "VariableCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2023
    new-instance v5, Lmiui/maml/ActionCommand$VariableAssignmentCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 2024
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_2
    const-string/jumbo v10, "BinderCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2025
    new-instance v5, Lmiui/maml/ActionCommand$VariableBinderCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 2026
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_3
    const-string/jumbo v10, "IntentCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2027
    new-instance v5, Lmiui/maml/ActionCommand$IntentCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$IntentCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 2028
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_4
    const-string/jumbo v10, "SoundCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2029
    new-instance v5, Lmiui/maml/ActionCommand$SoundCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$SoundCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 2030
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_5
    const-string/jumbo v10, "ExternCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2031
    new-instance v5, Lmiui/maml/ActionCommand$ExternCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$ExternCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 2032
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_6
    const-string/jumbo v10, "VibrateCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2033
    new-instance v5, Lmiui/maml/VibrateCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/VibrateCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 2034
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_7
    const-string/jumbo v10, "MethodCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2035
    new-instance v5, Lmiui/maml/ActionCommand$MethodCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$MethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 2036
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_8
    const-string/jumbo v10, "FieldCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2037
    new-instance v5, Lmiui/maml/ActionCommand$FieldCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$FieldCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    .line 2038
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_9
    const-string/jumbo v10, "MultiCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string/jumbo v10, "GroupCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2039
    :cond_a
    new-instance v5, Lmiui/maml/ActionCommand$MultiCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    .line 2040
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_b
    const-string/jumbo v10, "LoopCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2041
    new-instance v5, Lmiui/maml/ActionCommand$LoopCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$LoopCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    .line 2042
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_c
    const-string/jumbo v10, "AnimationCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2043
    new-instance v5, Lmiui/maml/ActionCommand$AnimationCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$AnimationCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    .line 2044
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_d
    const-string/jumbo v10, "ActionCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2045
    new-instance v5, Lmiui/maml/ActionCommand$ActionPerformCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$ActionPerformCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    .line 2047
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_e
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v10

    .line 2048
    const-string/jumbo v11, "ActionCommand"

    .line 2047
    invoke-virtual {v10, v11}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v4

    check-cast v4, Lmiui/maml/ObjectFactory$ActionCommandFactory;

    .line 2049
    .local v4, "f":Lmiui/maml/ObjectFactory$ActionCommandFactory;
    if-eqz v4, :cond_13

    .line 2050
    invoke-virtual {v4, p1, p0}, Lmiui/maml/ObjectFactory$ActionCommandFactory;->create(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;

    move-result-object v5

    .local v5, "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    .line 2057
    .end local v4    # "f":Lmiui/maml/ObjectFactory$ActionCommandFactory;
    :cond_f
    if-eqz v1, :cond_10

    .line 2058
    new-instance v5, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v5, v6, v1}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .line 2060
    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    :cond_10
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_11

    .line 2061
    new-instance v5, Lmiui/maml/ActionCommand$DelayCommand;

    invoke-direct {v5, v6, v2, v3}, Lmiui/maml/ActionCommand$DelayCommand;-><init>(Lmiui/maml/ActionCommand;J)V

    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .line 2063
    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    :cond_11
    if-eqz v0, :cond_12

    .line 2064
    new-instance v5, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v5, v6, v0}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    .line 2066
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :goto_1
    return-object v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    :cond_12
    move-object v5, v6

    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_1

    .restart local v4    # "f":Lmiui/maml/ObjectFactory$ActionCommandFactory;
    .local v5, "ret":Lmiui/maml/ActionCommand;
    :cond_13
    move-object v6, v5

    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 2131
    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2122
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getScreenContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final getScreenContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenElement()Lmiui/maml/elements/ScreenElement;
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    return-object v0
.end method

.method protected final getVariables()Lmiui/maml/data/Variables;
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 2128
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 2134
    return-void
.end method

.method public perform()V
    .locals 0

    .prologue
    .line 2102
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->doPerform()V

    .line 2101
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 2137
    return-void
.end method
