package sebehesa
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import sibaworop.Seqyw;
   import movimet.Lufub;
   import flash.display.Bitmap;
   import suko.Cogojy;
   import nec.Nara;
   import flash.filters.DropShadowFilter;
   import hedewi.Moho;
   import com.company.util.Zyvogajyl;
   import com.company.assembleegameclient.ui.Slot;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.MouseEvent;


   public class Qakyv extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qakyv(param1:Seqyw) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.lorokoza=param1;
         this.qikef();
         this.tizawu();
         this.zofehafi();
         this.bud();
         this.jiryfe();
         this.doj();
         this.gyp();
         this.draw();
         return;
      }

      private static const lacasoka:int = 22;

      public static const WIDTH:int = 756;

      public static const HEIGHT:int = 56;

      public const selected:Hugyqufyq = new Hugyqufyq(Seqyw);

      private var lorokoza:Seqyw;

      private var fotyf:Lufub;

      private var sozuh:Bitmap;

      private var vuzet:Lufub;

      private var jupedeb:Cogojy;

      private var lano:Lufub;

      private var cyqosy:Bitmap;

      private var nubi:Boolean;

      private function qikef() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fotyf=new Lufub().setSize(lacasoka).setColor(this.gynuha());
         var _loc1_:String = this.lorokoza.fugafi==-1?"---":this.lorokoza.fugafi.toString()+".";
         this.fotyf.setBold(!(this.lorokoza.fugafi==-1));
         this.fotyf.setStringBuilder(new Nara(_loc1_));
         this.fotyf.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.fotyf.x=82-this.fotyf.width;
         this.fotyf.y=(HEIGHT-lacasoka)*0.5;
         addChild(this.fotyf);
         return;
      }

      private function tizawu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sozuh=new Bitmap(this.lorokoza.character);
         this.sozuh.x=104;
         this.sozuh.y=HEIGHT/2-this.sozuh.height/2-2;
         addChild(this.sozuh);
         return;
      }

      private function zofehafi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vuzet=new Lufub().setSize(lacasoka).setColor(this.gynuha());
         this.vuzet.setBold(true);
         this.vuzet.setStringBuilder(new Nara(this.lorokoza.name));
         this.vuzet.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.vuzet.x=170;
         this.vuzet.y=(HEIGHT-lacasoka)*0.5;
         addChild(this.vuzet);
         return;
      }

      private function bud() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Moho = null;
         this.jupedeb=new Cogojy(null,this.lorokoza.bejojy,null);
         var _loc1_:Zyvogajyl = this.jupedeb.wajid();
         while(_loc1_.qinyv())
         {
            _loc2_=Moho(_loc1_.next());
            _loc2_.vifyk(false);
         }
         this.jupedeb.setItems(this.lorokoza.ril);
         this.jupedeb.x=400;
         this.jupedeb.y=HEIGHT/2-Slot.HEIGHT/2;
         addChild(this.jupedeb);
         return;
      }

      private function jiryfe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lano=new Lufub().setSize(lacasoka).setColor(this.gynuha());
         this.lano.setBold(true);
         this.lano.setStringBuilder(new Nara(this.lorokoza.nafydysi.toString()));
         this.lano.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.lano.x=660-this.lano.width;
         this.lano.y=(HEIGHT-lacasoka)*0.5;
         addChild(this.lano);
         return;
      }

      private function doj() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BitmapData = AssetLibrary.jeqycu("lofiObj3",224);
         this.cyqosy=new Bitmap(TextureRedrawer.redraw(_loc1_,40,true,0,0));
         this.cyqosy.x=630;
         this.cyqosy.y=HEIGHT/2-this.cyqosy.height/2;
         addChild(this.cyqosy);
         return;
      }

      private function gynuha() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:uint = 0;
         if(this.lorokoza.vogu)
         {
            _loc1_=16564761;
         }
         else
         {
            if(this.lorokoza.fugafi==1)
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

      private function gyp() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.zeg);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nubi=true;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nubi=false;
         this.draw();
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected.dispatch(this.lorokoza);
         return;
      }

      private function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.beginFill(0,this.nubi?0.4:0.001);
         graphics.drawRect(0,0,WIDTH,HEIGHT);
         graphics.endFill();
         return;
      }
   }

}