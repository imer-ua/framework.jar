.class public final Landroid/content/pm/PackageParser$Service;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Service$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component",
        "<",
        "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final info:Landroid/content/pm/ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6346
    new-instance v0, Landroid/content/pm/PackageParser$Service$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$Service$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6299
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V
    .locals 2
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParseComponentArgs;
    .param p2, "_info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 6303
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V

    .line 6304
    iput-object p2, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 6305
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6302
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6335
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/os/Parcel;)V

    .line 6338
    sget-object v2, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v3, Landroid/content/pm/ServiceInfo;

    invoke-static {p1, v2, v3}, Landroid/content/pm/PackageParser;->-wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    iput-object v2, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 6339
    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aii$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 6340
    .local v0, "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    iput-object p0, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    goto :goto_0

    .line 6334
    .end local v0    # "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$Service;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 6325
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6309
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 6310
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object p1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 6308
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6314
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6315
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Service{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6316
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6317
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6318
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$Service;->appendComponentShortName(Ljava/lang/StringBuilder;)V

    .line 6319
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 6330
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6331
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    or-int/lit8 v1, p2, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6329
    return-void
.end method
