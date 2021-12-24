function get_car_data() {
    var table1 = echarts.init(document.getElementById('table1'));
    var table2 = echarts.init(document.getElementById('table2'));

    option1 = {
        title : {
            text : '不同车型的数量'
        },
        tooltip : {},

        legend : {
            data : [ '车辆数' ]
        },
        xAxis : {
            data : []
        },
        yAxis : {},
        series : [
            {
                name : '车辆数',
                type : 'bar',
                data : []
            }
        ]
    };

    option2 = {
        backgroundColor: '#2c343c',

        title: {
            text: '车辆状态',
            left: 'center',
            top: 20,
            textStyle: {
                color: '#ccc'
            }
        },

        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },

        visualMap: {
            show: false,
            min: 80,
            max: 600,
            inRange: {
                colorLightness: [0, 1]
            }
        },
        series : [
            {
                name:'访问来源',
                type:'pie',
                radius : '55%',
                center: ['50%', '50%'],
                data:[
                    {value:335, name:'直接访问'},
                    {value:310, name:'邮件营销'},
                    {value:274, name:'联盟广告'},
                    {value:235, name:'视频广告'},
                    {value:400, name:'搜索引擎'}
                ].sort(function (a, b) { return a.value - b.value}),
                roseType: 'angle',
                label: {
                    normal: {
                        textStyle: {
                            color: 'rgba(255, 255, 255, 0.3)'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        lineStyle: {
                            color: 'rgba(255, 255, 255, 0.3)'
                        },
                        smooth: 0.2,
                        length: 10,
                        length2: 20
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#c23531',
                        shadowBlur: 200,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    table1.setOption(option1);
    table2.setOption(option2);

    table1.showLoading();
    table2.showLoading();

    $.ajax({
        type : "post",
        async : true,
        url : "${pageContext.request.contextPath}/manager/car-table",
        data : {},
        dataType : "json",

        success : function(result) {
            if (result) {
                var cars = [];
                var nums = [];
                for (var i = 0; i < result.length; ++i) {
                    cars.push(result[i].type);
                }
                for (var i = 0; i < result.length; ++i) {
                    nums.push(result[i].num);
                }

                table1.hideLoading();

                table1.setOption({
                    xAxis : {
                        data : cars
                    },
                    series : [ {
                        name : '数量',
                        data : nums
                    } ]
                });
            }

        },
        error : function() {
            alert("图表请求数据失败!");
            table1.hideLoading();
        }
    });
    $.ajax({
        type : "post",
        async : true,
        url : "${pageContext.request.contextPath}/manager/car-table",
        data : {},
        dataType : "json",

        success : function(result) {
            if (result) {
                var cars = [];
                var nums = [];
                for (var i = 0; i < result.length; ++i) {
                    cars.push(result[i].type);
                }
                for (var i = 0; i < result.length; ++i) {
                    nums.push(result[i].num);
                }

                table1.hideLoading();

                table1.setOption({
                    xAxis : {
                        data : cars
                    },
                    series : [ {
                        name : '数量',
                        data : nums
                    } ]
                });
            }

        },
        error : function() {
            alert("图表请求数据失败!");
            table1.hideLoading();
        }
    });
}