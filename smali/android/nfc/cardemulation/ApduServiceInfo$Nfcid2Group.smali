.class public Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nfcid2Group"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final category:Ljava/lang/String;

.field final description:Ljava/lang/String;

.field final nfcid2s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final optparam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final syscode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1161
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group$1;-><init>()V

    .line 1160
    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1076
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    .line 1093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    .line 1094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    .line 1095
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    .line 1096
    iput-object p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->description:Ljava/lang/String;

    .line 1091
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p1, "nfcid2s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "syscode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "optparam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    .line 1085
    iput-object p4, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    .line 1086
    iput-object p5, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->description:Ljava/lang/String;

    .line 1087
    iput-object p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    .line 1088
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    .line 1083
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1136
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getNfcid2s()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOptparamForNfcid2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nfcid2"    # Ljava/lang/String;

    .prologue
    .line 1116
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1117
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1118
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1120
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getSyscodeForNfcid2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nfcid2"    # Ljava/lang/String;

    .prologue
    .line 1108
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1109
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1110
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1112
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1126
    const-string/jumbo v4, ", description: "

    .line 1125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1126
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->description:Ljava/lang/String;

    .line 1125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1126
    const-string/jumbo v4, ", AIDs:"

    .line 1125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v2, "out":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nfcid2$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1128
    .local v0, "nfcid2":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1131
    .end local v0    # "nfcid2":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1146
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1149
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1151
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1154
    :cond_1
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1156
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1140
    :cond_2
    return-void
.end method
