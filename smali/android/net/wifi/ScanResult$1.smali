.class final Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 30
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 655
    const/4 v5, 0x0

    .line 656
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 657
    sget-object v6, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v5, Landroid/net/wifi/WifiSsid;

    .line 659
    :cond_0
    new-instance v4, Landroid/net/wifi/ScanResult;

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 663
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 667
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 669
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 671
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 676
    const/16 v21, 0x0

    .line 659
    invoke-direct/range {v4 .. v23}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V

    .line 682
    .local v4, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v4, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/ScanResult;->flags:J

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 692
    .local v27, "n":I
    if-eqz v27, :cond_2

    .line 693
    move/from16 v0, v27

    new-array v6, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 694
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 695
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    new-instance v7, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v7}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    aput-object v7, v6, v25

    .line 696
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v6, v6, v25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 697
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 698
    .local v26, "len":I
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v6, v6, v25

    move/from16 v0, v26

    new-array v7, v0, [B

    iput-object v7, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 699
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v6, v6, v25

    iget-object v6, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 694
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 683
    .end local v25    # "i":I
    .end local v26    # "len":I
    .end local v27    # "n":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 703
    .restart local v27    # "n":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 704
    if-eqz v27, :cond_3

    .line 705
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 706
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 707
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 710
    .end local v25    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 711
    if-eqz v27, :cond_4

    .line 712
    move/from16 v0, v27

    new-array v6, v0, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 713
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 715
    .local v29, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 716
    .local v24, "elementId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 717
    .restart local v26    # "len":I
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 718
    .local v28, "payload":[B
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 719
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 720
    new-instance v7, Landroid/net/wifi/AnqpInformationElement;

    move/from16 v0, v29

    move/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v7, v0, v1, v2}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    .line 719
    aput-object v7, v6, v25

    .line 713
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 723
    .end local v24    # "elementId":I
    .end local v25    # "i":I
    .end local v26    # "len":I
    .end local v28    # "payload":[B
    .end local v29    # "vendorId":I
    :cond_4
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 727
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method
