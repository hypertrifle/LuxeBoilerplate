import luxe.States;
import luxe.Input;
import luxe.Text;
import luxe.Sprite;
import luxe.Color;
import luxe.Vector;
import phoenix.Texture;


class PlayState extends State {

    var entity : Sprite;
    var texture : Texture;

    public function new(_name:String) {

        super({ name:_name });

    } //new

    override function init() {
        //called when added to the state machine


    } //init

    override function onenter<T>(_value:T) {
        //entering this state
        
        //load texture
        if(texture == null) texture = Luxe.resources.texture('assets/player.png');
        //create an entity
        entity = new Sprite({
            name : 'road',
            depth : 1,
         //   texture : texture,
            pos : new Vector(0,0)
        }); //

        //add a component to an entity
        entity.add(new components.Component({name:'name'}));


    } //onenter

    override function onleave<T>(_value:T) {
        //leaving this state
        entity.destroy();
    } //onleave

    override function onkeyup(e:KeyEvent) {
        //machine.set('play_state');
    }

    override function update(dt:Float) {
        //called on each update frame
        
        //if(Luxe.input.keypressed('up')){ };
        //if(Luxe.input.keyreleased('up')){ };
        //if(Luxe.input.keydown('up')){ };

    }


} //MenuState
