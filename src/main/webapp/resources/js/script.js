iziToast.settings({
    timeout: 3000, // default timeout
    resetOnHover: true,
    // icon: '', // icon class
    transitionIn: 'flipInX',
    transitionOut: 'flipOutX',
    position: 'topRight', // bottomRight, bottomLeft, topRight, topLeft, topCenter, bottomCenter, center
    onOpen: function () {
        console.log('callback abriu!');
    },
    onClose: function () {
        console.log("callback fechou!");
    }
});


// info
$('#infoClick').click(function () {
    iziToast.info({position: "center", title: 'Hello', message: 'iziToast.info()'});
}); // ! click

// success
$('#successClick').click(function () {
    iziToast.success({timeout: 5000, icon: 'fa fa-chrome', title: 'OK', message: 'iziToast.sucess() with custom icon!'});
}); // ! .click

// warning
$('#warningClick').click(function () {
    iziToast.warning({position: "bottomLeft", title: 'Caution', message: '日本語環境のテスト'});
});

// error
$('#errorClick').click(function () {
    iziToast.error({title: 'Error', message: 'Illegal operation'});
});