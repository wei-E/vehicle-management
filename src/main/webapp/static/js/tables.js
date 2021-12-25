function get_car_data() {
    var table1 = echarts.init(document.getElementById('table1'));
    var table2 = echarts.init(document.getElementById('table2'));

    var option1 = {
        title : {
            text : '车辆数量'
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

    var option2 = {
        title : {
            text : '车辆状态'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: []
        },
        series : [
            {
                name: '车辆状态',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
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
                var names = [];
                for (var i = 0; i < result.length; ++i) {
                    names.push(result[i].name);
                }

                table2.hideLoading();

                table2.setOption({
                    legend: {
                        data: names
                    },
                    series : [
                        {
                            data : result
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

    var option = {
        title : {
            text : '驾驶员状态'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: []
        },
        series : [
            {
                name: '驾驶员状态',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
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
                var names = [];
                for (var i = 0; i < result.length; ++i) {
                    names.push(result[i].name);
                }

                table.hideLoading();

                table.setOption({
                    legend: {
                        data: names
                    },
                    series : [
                        {
                            data : result
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