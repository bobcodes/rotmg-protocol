package caqu
{
[CLASS893]   import flash.display.Sprite;
   import tinava.Dab;
   import dyvelo.Tobyd;
   import pudev.Capitu;
   import flash.display.Bitmap;
   import ferozosyf.Hekuli;
   import totuhare.Javo;
   import flash.filters.DropShadowFilter;
   import daloraf.Humy;
   import com.company.util.Sakejemu;
   import com.company.assembleegameclient.ui.Slot;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.MouseEvent;


   public class Wobesawiw extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wobesawiw(param1:Tobyd) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.lelanus=param1;
         this.wygutig();
         this.kusyso();
         this.renutady();
         this.kekulove();
         this.kigymeda();
         this.homujag();
         this.fejysu();
         this.draw();
         return;
      }

      private static const heh:int = 22;

      public static const WIDTH:int = 756;

      public static const HEIGHT:int = 56;

      public const selected:Dab = new Dab(Tobyd);

      private var lelanus:Tobyd;

      private var poz:Capitu;

      private var tyvatuzas:Bitmap;

      private var luwuz:Capitu;

      private var dipusup:Hekuli;

      private var rociro:Capitu;

      private var numarijed:Bitmap;

      private var dimopu:Boolean;

      private function wygutig() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.poz=new Capitu().setSize(heh).setColor(this.conehody());
         var _loc1_:String = this.lelanus.petusyz==-1?"---":this.lelanus.petusyz.toString()+".";
         this.poz.setBold(!(this.lelanus.petusyz==-1));
         this.poz.setStringBuilder(new Javo(_loc1_));
         this.poz.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.poz.x=82-this.poz.width;
         this.poz.y=(HEIGHT-heh)*0.5;
         addChild(this.poz);
         return;
      }

      private function kusyso() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tyvatuzas=new Bitmap(this.lelanus.character);
         this.tyvatuzas.x=104;
         this.tyvatuzas.y=HEIGHT/2-this.tyvatuzas.height/2-2;
         addChild(this.tyvatuzas);
         return;
      }

      private function renutady() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.luwuz=new Capitu().setSize(heh).setColor(this.conehody());
         this.luwuz.setBold(true);
         this.luwuz.setStringBuilder(new Javo(this.lelanus.name));
         this.luwuz.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.luwuz.x=170;
         this.luwuz.y=(HEIGHT-heh)*0.5;
         addChild(this.luwuz);
         return;
      }

      private function kekulove() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Humy = null;
         this.dipusup=new Hekuli(null,this.lelanus.jusyv,null);
         var _loc1_:Sakejemu = this.dipusup.vywycok();
         while(_loc1_.talunury())
         {
            _loc2_=Humy(_loc1_.next());
            _loc2_.nyqynujo(false);
         }
         this.dipusup.setItems(this.lelanus.giguc);
         this.dipusup.x=400;
         this.dipusup.y=HEIGHT/2-Slot.HEIGHT/2;
         addChild(this.dipusup);
         return;
      }

      private function kigymeda() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rociro=new Capitu().setSize(heh).setColor(this.conehody());
         this.rociro.setBold(true);
         this.rociro.setStringBuilder(new Javo(this.lelanus.qocyti.toString()));
         this.rociro.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.rociro.x=660-this.rociro.width;
         this.rociro.y=(HEIGHT-heh)*0.5;
         addChild(this.rociro);
         return;
      }

      private function homujag() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:BitmapData = AssetLibrary.zovy("lofiObj3",224);
         this.numarijed=new Bitmap(TextureRedrawer.redraw(_loc1_,40,true,0,0));
         this.numarijed.x=630;
         this.numarijed.y=HEIGHT/2-this.numarijed.height/2;
         addChild(this.numarijed);
         return;
      }

      private function conehody() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:uint = 0;
         if(this.lelanus.vimeja)
         {
            _loc1_=16564761;
         }
         else
         {
            if(this.lelanus.petusyz==1)
            {
               _loc1_=16646031;
            }
            else
            {
               _loc1_=16777215;
            }
         }
         return _loc1_;
      }

      private function fejysu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dimopu=true;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dimopu=false;
         this.draw();
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected.dispatch(this.lelanus);
         return;
      }

      private function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.clear();
         graphics.beginFill(0,this.dimopu?0.4:0.001);
         graphics.drawRect(0,0,WIDTH,HEIGHT);
         graphics.endFill();
         return;
      }
   }
[/CLASS]
}