package gudon
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import zynuqu.Topunu;
   import hivysif.Guzowoja;
   import flash.display.Bitmap;
   import copano.Myfely;
   import jediwip.Vofezuzy;
   import flash.filters.DropShadowFilter;
   import loqaj.Kuk;
   import com.company.util.Vos;
   import com.company.assembleegameclient.ui.Slot;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.events.MouseEvent;


   public class Tupamiqyz extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tupamiqyz(param1:Topunu) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.boki=param1;
         this.fepek();
         this.tobipamy();
         this.wud();
         this.jysuwaqoq();
         this.jedyg();
         this.kytot();
         this.jidesyd();
         this.draw();
         return;
      }

      private static const voquhubi:int = 22;

      public static const WIDTH:int = 756;

      public static const HEIGHT:int = 56;

      public const selected:Qanyduk = new Qanyduk(Topunu);

      private var boki:Topunu;

      private var tub:Guzowoja;

      private var qemy:Bitmap;

      private var nulopy:Guzowoja;

      private var seq:Myfely;

      private var lefedico:Guzowoja;

      private var sotu:Bitmap;

      private var pyqusu:Boolean;

      private function fepek() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tub=new Guzowoja().setSize(voquhubi).setColor(this.musybiboj());
         var _loc1_:String = this.boki.leqerat==-1?"---":this.boki.leqerat.toString()+".";
         this.tub.setBold(!(this.boki.leqerat==-1));
         this.tub.setStringBuilder(new Vofezuzy(_loc1_));
         this.tub.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.tub.x=82-this.tub.width;
         this.tub.y=(HEIGHT-voquhubi)*0.5;
         addChild(this.tub);
         return;
      }

      private function tobipamy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qemy=new Bitmap(this.boki.character);
         this.qemy.x=104;
         this.qemy.y=HEIGHT/2-this.qemy.height/2-2;
         addChild(this.qemy);
         return;
      }

      private function wud() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nulopy=new Guzowoja().setSize(voquhubi).setColor(this.musybiboj());
         this.nulopy.setBold(true);
         this.nulopy.setStringBuilder(new Vofezuzy(this.boki.name));
         this.nulopy.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.nulopy.x=170;
         this.nulopy.y=(HEIGHT-voquhubi)*0.5;
         addChild(this.nulopy);
         return;
      }

      private function jysuwaqoq() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Kuk = null;
         this.seq=new Myfely(null,this.boki.duhi,null);
         var _loc1_:Vos = this.seq.towapaso();
         while(_loc1_.vaduzuke())
         {
            _loc2_=Kuk(_loc1_.next());
            _loc2_.camubabeh(false);
         }
         this.seq.setItems(this.boki.monyn);
         this.seq.x=400;
         this.seq.y=HEIGHT/2-Slot.HEIGHT/2;
         addChild(this.seq);
         return;
      }

      private function jedyg() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lefedico=new Guzowoja().setSize(voquhubi).setColor(this.musybiboj());
         this.lefedico.setBold(true);
         this.lefedico.setStringBuilder(new Vofezuzy(this.boki.tokanemi.toString()));
         this.lefedico.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.lefedico.x=660-this.lefedico.width;
         this.lefedico.y=(HEIGHT-voquhubi)*0.5;
         addChild(this.lefedico);
         return;
      }

      private function kytot() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BitmapData = AssetLibrary.tem("lofiObj3",224);
         this.sotu=new Bitmap(TextureRedrawer.redraw(_loc1_,40,true,0,0));
         this.sotu.x=630;
         this.sotu.y=HEIGHT/2-this.sotu.height/2;
         addChild(this.sotu);
         return;
      }

      private function musybiboj() : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:uint = 0;
         if(this.boki.hosifurug)
         {
            _loc1_=16564761;
         }
         else
         {
            if(this.boki.leqerat==1)
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

      private function jidesyd() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyqusu=true;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pyqusu=false;
         this.draw();
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.selected.dispatch(this.boki);
         return;
      }

      private function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.beginFill(0,this.pyqusu?0.4:0.001);
         graphics.drawRect(0,0,WIDTH,HEIGHT);
         graphics.endFill();
         return;
      }
   }

}