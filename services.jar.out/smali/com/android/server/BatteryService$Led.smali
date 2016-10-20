.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 831
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 832
    const v1, 0x1120046

    .line 831
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/BatteryService;->-set7(Lcom/android/server/BatteryService;Z)Z

    .line 835
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 836
    const v1, 0x3f050003

    .line 835
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;Z)Z

    .line 839
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 840
    const v1, 0x3f050004

    .line 839
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/BatteryService;->-set9(Lcom/android/server/BatteryService;Z)Z

    .line 842
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 843
    const v1, 0x10e0057

    .line 842
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 844
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 845
    const v1, 0x10e0058

    .line 844
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 827
    return-void
.end method

.method private isHvdcpPresent()Z
    .locals 12

    .prologue
    .line 849
    new-instance v10, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/power_supply/usb/type"

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 856
    .local v10, "mChargerTypeFile":Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 857
    .local v9, "fileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 858
    .local v6, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v3, "USB_HVDCP"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    const/4 v11, 0x1

    .line 863
    .local v11, "ret":Z
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 864
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v0    # "type":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    :goto_1
    return v11

    .line 862
    .end local v11    # "ret":Z
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "ret":Z
    goto :goto_0

    .line 868
    .end local v0    # "type":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v11    # "ret":Z
    :catch_0
    move-exception v8

    .line 869
    .local v8, "e":Ljava/io/IOException;
    const/4 v11, 0x0

    .line 870
    .restart local v11    # "ret":Z
    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failure in reading charger type"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 865
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "ret":Z
    :catch_1
    move-exception v7

    .line 866
    .local v7, "e":Ljava/io/FileNotFoundException;
    const/4 v11, 0x0

    .line 867
    .restart local v11    # "ret":Z
    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failure in reading charger type"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 881
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-nez v2, :cond_0

    .line 882
    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateLightsLocked: mBatteryProps is null; skipping"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void

    .line 886
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 887
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 888
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get10(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 890
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 879
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get12(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 892
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get16(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 893
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get14(Lcom/android/server/BatteryService;)Z

    move-result v4

    .line 892
    invoke-virtual {v2, v3, v4}, Lcom/android/server/lights/Light;->setModes(IZ)V

    .line 894
    if-ne v1, v5, :cond_2

    .line 896
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 897
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get9(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 899
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 900
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 899
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 903
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 905
    :cond_4
    if-eq v1, v5, :cond_5

    .line 906
    if-ne v1, v7, :cond_9

    .line 907
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get16(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 908
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get14(Lcom/android/server/BatteryService;)Z

    move-result v4

    .line 907
    invoke-virtual {v2, v3, v4}, Lcom/android/server/lights/Light;->setModes(IZ)V

    .line 909
    if-eq v1, v7, :cond_6

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_7

    .line 911
    :cond_6
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 913
    :cond_7
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->isHvdcpPresent()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 915
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 916
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 915
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 919
    :cond_8
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto/16 :goto_0

    .line 924
    :cond_9
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_0
.end method
