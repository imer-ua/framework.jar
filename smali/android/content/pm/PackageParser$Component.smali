.class public abstract Landroid/content/pm/PackageParser$Component;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field componentName:Landroid/content/ComponentName;

.field componentShortName:Ljava/lang/String;

.field public final intents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TII;>;"
        }
    .end annotation
.end field

.field public metaData:Landroid/os/Bundle;

.field public owner:Landroid/content/pm/PackageParser$Package;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Component",
            "<TII;>;)V"
        }
    .end annotation

    .prologue
    .line 5831
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    .local p1, "clone":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5832
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 5833
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 5834
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 5835
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 5836
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 5831
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    .line 5784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5785
    iput-object p1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 5786
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 5787
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 5784
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V
    .locals 7
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParseComponentArgs;
    .param p2, "outInfo"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v6, 0x0

    .line 5803
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V

    .line 5804
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->outError:[Ljava/lang/String;

    aget-object v0, v0, v6

    if-eqz v0, :cond_0

    .line 5805
    return-void

    .line 5808
    :cond_0
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    if-eqz v0, :cond_1

    .line 5810
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 5811
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 5812
    const/16 v3, 0x400

    .line 5811
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5819
    .local v2, "pname":Ljava/lang/CharSequence;
    :goto_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5820
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 5821
    iget v3, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    iget-object v4, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->outError:[Ljava/lang/String;

    .line 5819
    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->-wrap2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 5824
    .end local v2    # "pname":Ljava/lang/CharSequence;
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    if-eqz v0, :cond_2

    .line 5825
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 5828
    :cond_2
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p2, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 5802
    return-void

    .line 5817
    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pname":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V
    .locals 12
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParsePackageItemArgs;
    .param p2, "outInfo"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 5790
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5791
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 5792
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 5793
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 5794
    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    iget v7, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    iget v8, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    .line 5795
    iget v9, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->roundIconRes:I

    iget v10, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->logoRes:I

    iget v11, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->bannerRes:I

    .line 5794
    const/4 v5, 0x1

    move-object v1, p2

    .line 5793
    invoke-static/range {v0 .. v11}, Landroid/content/pm/PackageParser;->-wrap1(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5796
    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 5790
    :goto_0
    return-void

    .line 5798
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5850
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5851
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 5852
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 5853
    invoke-static {p1}, Landroid/content/pm/PackageParser$Component;->createIntentsList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 5855
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 5850
    return-void
.end method

.method private static createIntentsList(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/pm/PackageParser$IntentInfo;",
            ">(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 5901
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5902
    .local v0, "N":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 5903
    const/4 v7, 0x0

    return-object v7

    .line 5906
    :cond_0
    if-nez v0, :cond_1

    .line 5907
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    return-object v7

    .line 5910
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5913
    .local v2, "componentName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5914
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/os/Parcel;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 5916
    .local v3, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5917
    .local v5, "intentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 5918
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$IntentInfo;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5917
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5920
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v3    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v4    # "i":I
    .end local v5    # "intentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catch_0
    move-exception v6

    .line 5921
    .local v6, "ree":Ljava/lang/ReflectiveOperationException;
    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to construct intent list for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 5924
    .end local v6    # "ree":Ljava/lang/ReflectiveOperationException;
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v3    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v4    # "i":I
    .restart local v5    # "intentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_2
    return-object v5
.end method

.method private static writeIntentsList(Ljava/util/ArrayList;Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/content/pm/PackageParser$IntentInfo;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/content/pm/PackageParser$IntentInfo;>;"
    const/4 v3, 0x0

    .line 5881
    if-nez p0, :cond_0

    .line 5882
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5883
    return-void

    .line 5886
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5887
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5890
    if-lez v0, :cond_1

    .line 5891
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$IntentInfo;

    .line 5892
    .local v2, "info":Landroid/content/pm/PackageParser$IntentInfo;
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$IntentInfo;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5894
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5895
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$IntentInfo;

    invoke-virtual {v3, p1, p2}, Landroid/content/pm/PackageParser$IntentInfo;->writeIntentInfoToParcel(Landroid/os/Parcel;I)V

    .line 5894
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5880
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/PackageParser$IntentInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public appendComponentShortName(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 5928
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5927
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 5840
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 5841
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    return-object v0

    .line 5843
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5844
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5845
    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 5844
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 5847
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public printComponentShortName(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 5932
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 5931
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    .line 5936
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 5937
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 5935
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 5859
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5860
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5862
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser$Component;->writeIntentsList(Ljava/util/ArrayList;Landroid/os/Parcel;I)V

    .line 5858
    return-void
.end method
