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
            min: 0,
            max: 100,
            inRange: {
                colorLightness: [0, 1]
            }
        },
        series : [
            {
                name:'车辆类型',
                type:'pie',
                radius : '55%',
                center: ['50%', '50%'],
                data:[],
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
        url : "table1",
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
        url : "table2",
        data : {},
        dataType : "json",

        success : function(result) {
            if (result) {
                table2.hideLoading();

                table2.setOption({
                    series : [
                        {
                            data : result.sort(function (a, b) { return a.value - b.value}),
                        }
                    ]
                });
            }

        },
        error : function() {
            alert("图表请求数据失败!");
            table2.hideLoading();
        }
    });
}

function get_driver_data() {
    var table = echarts.init(document.getElementById('table'));

    option = {
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
            min: 0,
            max: 100,
            inRange: {
                colorLightness: [0, 1]
            }
        },
        series : [
            {
                name:'车辆类型',
                type:'pie',
                radius : '55%',
                center: ['50%', '50%'],
                data:[],
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

    table.setOption(option);

    table.showLoading();

    $.ajax({
        type : "post",
        async : true,
        url : "table",
        data : {},
        dataType : "json",

        success : function(result) {
            if (result) {
                table.hideLoading();

                table.setOption({
                    series : [
                        {
                            data : result.sort(function (a, b) { return a.value - b.value}),
                        }
                    ]
                });
            }

        },
        error : function() {
            alert("图表请求数据失败!");
            table.hideLoading();
        }
    });
}
function stampToDate(stamp) {
    return new Date(parseInt(stamp) * 1000).toLocaleString().replace(/:\d{1,2}$/,' ');
}