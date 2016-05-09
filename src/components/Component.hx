package components;


class Component extends luxe.Component {

    override function init() {
        //called when initialising the component
        trace("component init");
    }

    override function update(dt:Float) {
        //called every frame for you
    }

    override function onreset() {
        //called when the scene starts or restarts
    }

}
