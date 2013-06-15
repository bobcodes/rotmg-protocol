package wenono
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import sydo.Zib;
   import com.company.assembleegameclient.objects.Bijelywa;
   import flash.display.Bitmap;
   import sydo.IconButton;
   import hivysif.Guzowoja;
   import qykifavol.Hydydyqas;
   import com.company.assembleegameclient.ui.Vymu;
   import com.company.assembleegameclient.ui.Geqohuzet;
   import komi.Vibemod;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.objects.Player;
   import jediwip.Vofezuzy;


   public class CharacterDetailsView extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterDetailsView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kegov=new Qanyduk();
         this.fezu=new Qanyduk();
         this.kacezy=new Bitmap(null);
         this.nameText_=new Guzowoja().setSize(20).setColor(11776947);
         this.hadug=new Hydydyqas(this.button,MouseEvent.CLICK);
         this.walilov=new Hydydyqas(this.button,MouseEvent.CLICK);
         super();
         return;
      }

      public static const NEXUS_BUTTON:String = "NEXUS_BUTTON";

      public static const OPTIONS_BUTTON:String = "OPTIONS_BUTTON";

      public static const cilyl:String = "lofiInterfaceBig";

      public static const pag:int = 6;

      public static const joqylul:int = 5;

      public var kegov:Qanyduk;

      public var fezu:Qanyduk;

      public var ciciviqod:Zib;

      public var cubalacac:Bijelywa;

      private var kacezy:Bitmap;

      private var button:IconButton;

      private var nameText_:Guzowoja;

      private var hadug:Hydydyqas;

      private var walilov:Hydydyqas;

      private var jopu:Vymu;

      private var wyfas:Geqohuzet;

      public function init(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qyn();
         this.wyjam(param1);
         this.zar(param2);
         return;
      }

      private function zar(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==NEXUS_BUTTON)
         {
            this.button=this.ciciviqod.create(this.cubalacac.tem(cilyl,pag),Vibemod.budutif,"escapeToNexus");
            this.hadug=new Hydydyqas(this.button,MouseEvent.CLICK,MouseEvent);
            this.hadug.add(this.pesu);
         }
         else
         {
            if(param1==OPTIONS_BUTTON)
            {
               this.button=this.ciciviqod.create(this.cubalacac.tem(cilyl,joqylul),Vibemod.satag,"options");
               this.walilov=new Hydydyqas(this.button,MouseEvent.CLICK,MouseEvent);
               this.walilov.add(this.gaweho);
            }
         }
         this.button.x=172;
         this.button.y=4;
         addChild(this.button);
         return;
      }

      private function qyn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kacezy.x=-2;
         this.kacezy.y=-8;
         addChild(this.kacezy);
         return;
      }

      private function wyjam(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         this.kacezy.bitmapData=param1.getPortrait();
         return;
      }

      public function draw(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.wyfas)
         {
            this.wyfas.update(param1.toz);
         }
         if((param1.hugy)||(param1.hukul))
         {
            this.jopu=(this.jopu)||(new Vymu(param1));
            if(this.kacezy)
            {
               this.kacezy.x=13;
            }
            if(this.nameText_)
            {
               this.nameText_.x=47;
            }
            this.jopu.x=6;
            this.jopu.y=5;
            addChild(this.jopu);
         }
         else
         {
            if(this.jopu)
            {
               removeChild(this.jopu);
               this.jopu=null;
               this.kacezy.x=-2;
               this.nameText_.x=36;
            }
         }
         return;
      }

      private function pesu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kegov.dispatch();
         return;
      }

      private function gaweho(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fezu.dispatch();
         return;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nameText_.setStringBuilder(new Vofezuzy(param1));
         return;
      }
   }

}