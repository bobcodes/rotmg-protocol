package tidi
{
[CLASS457]   import flash.display.Sprite;
   import tinava.Dab;
   import zufazene.Tosisahin;
   import com.company.assembleegameclient.objects.Loqedobiq;
   import flash.display.Bitmap;
   import zufazene.IconButton;
   import pudev.Capitu;
   import zehus.Caje;
   import com.company.assembleegameclient.ui.Tawel;
   import com.company.assembleegameclient.ui.Kipad;
   import haqakel.Kefyfa;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.objects.Player;
   import totuhare.Javo;


   public class CharacterDetailsView extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterDetailsView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kaju=new Dab();
         this.supimu=new Dab();
         this.sedi=new Bitmap(null);
         this.nameText_=new Capitu().setSize(20).setColor(11776947);
         this.lyloz=new Caje(this.button,MouseEvent.CLICK);
         this.jofilot=new Caje(this.button,MouseEvent.CLICK);
         super();
         return;
      }

      public static const NEXUS_BUTTON:String = "NEXUS_BUTTON";

      public static const OPTIONS_BUTTON:String = "OPTIONS_BUTTON";

      public static const dyli:String = "lofiInterfaceBig";

      public static const qec:int = 6;

      public static const cyve:int = 5;

      public var kaju:Dab;

      public var supimu:Dab;

      public var rihig:Tosisahin;

      public var tidiqor:Loqedobiq;

      private var sedi:Bitmap;

      private var button:IconButton;

      private var nameText_:Capitu;

      private var lyloz:Caje;

      private var jofilot:Caje;

      private var nol:Tawel;

      private var paceva:Kipad;

      public function init(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.zypyhe();
         this.dilop(param1);
         this.tycyrol(param2);
         return;
      }

      private function tycyrol(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==NEXUS_BUTTON)
         {
            this.button=this.rihig.create(this.tidiqor.zovy(dyli,qec),Kefyfa.coqaf,"escapeToNexus");
            this.lyloz=new Caje(this.button,MouseEvent.CLICK,MouseEvent);
            this.lyloz.add(this.koz);
         }
         else
         {
            if(param1==OPTIONS_BUTTON)
            {
               this.button=this.rihig.create(this.tidiqor.zovy(dyli,cyve),Kefyfa.mebevuco,"options");
               this.jofilot=new Caje(this.button,MouseEvent.CLICK,MouseEvent);
               this.jofilot.add(this.kijyqec);
            }
         }
         this.button.x=172;
         this.button.y=4;
         addChild(this.button);
         return;
      }

      private function zypyhe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sedi.x=-2;
         this.sedi.y=-8;
         addChild(this.sedi);
         return;
      }

      private function dilop(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nameText_.setBold(true);
         this.nameText_.x=36;
         this.nameText_.y=3;
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         this.setName(param1);
         addChild(this.nameText_);
         return;
      }

      public function update(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sedi.bitmapData=param1.getPortrait();
         return;
      }

      public function draw(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.paceva)
         {
            this.paceva.update(param1.bemy);
         }
         if((param1.gucec)||(param1.sap))
         {
            this.nol=(this.nol)||(new Tawel(param1));
            if(this.sedi)
            {
               this.sedi.x=13;
            }
            if(this.nameText_)
            {
               this.nameText_.x=47;
            }
            this.nol.x=6;
            this.nol.y=5;
            addChild(this.nol);
         }
         else
         {
            if(this.nol)
            {
               removeChild(this.nol);
               this.nol=null;
               this.sedi.x=-2;
               this.nameText_.x=36;
            }
         }
         return;
      }

      private function koz(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kaju.dispatch();
         return;
      }

      private function kijyqec(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.supimu.dispatch();
         return;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nameText_.setStringBuilder(new Javo(param1));
         return;
      }
   }
[/CLASS]
}