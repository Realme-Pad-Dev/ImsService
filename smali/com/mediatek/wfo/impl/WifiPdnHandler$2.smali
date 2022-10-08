.class Lcom/mediatek/wfo/impl/WifiPdnHandler$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 1438
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .line 1444
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$400(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1446
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty network capability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1448
    return-void

    .line 1451
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    .line 1452
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1465
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v6, "WIFI onAvailable."

    invoke-virtual {v2, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1467
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v4, v1, v5, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1471
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1473
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$502(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;

    .line 1474
    return-void

    .line 1453
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "Without TRANSPORT_WIFI."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1454
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1455
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "TRANSPORT_WIFI lost."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1456
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1, v4, v5, v5, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1460
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1462
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1510
    if-nez p2, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v1, "NetworkCallback.onCapabilitiesChanged, Capabilities=null"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1512
    return-void

    .line 1515
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    .line 1516
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1520
    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v1

    .line 1521
    .local v1, "rssi":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkCallback.onCapabilitiesChanged, rssi == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1523
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1525
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v3, "NetworkCallback.onCapabilitiesChanged, request partial scan to switch wifi ap"

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1535
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1536
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1540
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1543
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$502(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;

    .line 1545
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$600(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1546
    return-void

    .line 1548
    :cond_4
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$602(Lcom/mediatek/wfo/impl/WifiPdnHandler;I)I

    .line 1549
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$702(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)Z

    .line 1550
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendEmptyMessage(I)Z

    .line 1551
    return-void

    .line 1517
    .end local v1    # "rssi":I
    :cond_5
    :goto_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 1559
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$400(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1561
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged Empty network capability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1563
    return-void

    .line 1566
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    .line 1567
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1572
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLinkPropertiesChanged TRANSPORT_WIFI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1574
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1576
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1580
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1583
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$502(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;

    .line 1584
    return-void

    .line 1568
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onLinkPropertiesChanged Without TRANSPORT_WIFI."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1569
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .line 1481
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$400(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1483
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1484
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLost with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1486
    return-void

    .line 1489
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    .line 1490
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1496
    :cond_1
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "WIFI onLost."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1498
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1502
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1504
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->access$502(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;

    .line 1505
    return-void

    .line 1491
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "OnLost without TRANSPORT_WIFI."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1492
    return-void
.end method
