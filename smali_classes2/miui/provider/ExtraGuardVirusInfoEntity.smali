.class public Lmiui/provider/ExtraGuardVirusInfoEntity;
.super Ljava/lang/Object;
.source "ExtraGuardVirusInfoEntity.java"


# instance fields
.field private mAdvice:I

.field private mDescription:Ljava/lang/String;

.field private mEngineName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    .line 20
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    .line 21
    iput v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    .line 22
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getAdvice()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    return v0
.end method

.method public getVirusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvice(I)V
    .locals 0
    .param p1, "_advice"    # I

    .prologue
    .line 48
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    .line 47
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "_description"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setEngineName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_engineName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "_type"    # I

    .prologue
    .line 32
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    .line 31
    return-void
.end method

.method public setVirusName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_virusName"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    .line 55
    return-void
.end method
