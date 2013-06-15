package gabufo
{
   import flash.display.Sprite;
   import sefylew.Rut;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import waryp.Nulejufyl;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.display.DisplayObject;
   import jediwip.Vofezuzy;


   public class Tydagid extends Sprite implements Rut
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tydagid() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.bajek();
         this.qonugile();
         return;
      }

      private static const voquhubi:int = 18;

      private var nitycen:Qanyduk;

      public function get login() : Qanyduk {
         return this.nitycen;
      }

      private var qodysig:Qanyduk;

      public function get register() : Qanyduk {
         return this.qodysig;
      }

      private var userName:String = "";

      private var zuqic:Boolean;

      private var rif:Guzowoja;

      private var nenyha:Nulejufyl;

      private var fokododil:Nulejufyl;

      private function bajek() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pypa();
         this.sipyk();
         this.makut();
         return;
      }

      private function qonugile() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nitycen=new Rulavowaz(this.fokododil,MouseEvent.CLICK);
         this.qodysig=new Rulavowaz(this.nenyha,MouseEvent.CLICK);
         return;
      }

      private function pypa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rif=this.conotita();
         this.rif.setStringBuilder(new Kybidu().setParams(Vibemod.lemop));
         return;
      }

      private function conotita() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = new Guzowoja();
         _loc1_.setAutoSize(TextFieldAutoSize.RIGHT);
         _loc1_.setSize(voquhubi).setColor(11776947);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         return _loc1_;
      }

      private function sipyk() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fokododil=new Nulejufyl(Vibemod.jen,voquhubi,false);
         this.fokododil.setAutoSize(TextFieldAutoSize.RIGHT);
         return;
      }

      private function makut() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nenyha=new Nulejufyl(Vibemod.pizym,voquhubi,false);
         this.nenyha.setAutoSize(TextFieldAutoSize.RIGHT);
         return;
      }

      private function zycibo() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja();
         _loc1_.setColor(11776947).setAutoSize(TextFieldAutoSize.RIGHT).setSize(voquhubi);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         _loc1_.setStringBuilder(new Vofezuzy(" - "));
         return _loc1_;
      }

      public function zyfa(param1:String, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.userName=param1;
         this.zuqic=param2;
         this.cyces();
         return;
      }

      private function cyces() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.beluhivi();
         if(this.zuqic)
         {
            this.jub();
         }
         else
         {
            this.pyfydigih();
         }
         return;
      }

      private function beluhivi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(numChildren)
         {
            removeChildAt(0);
         }
         return;
      }

      private function jub() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rif.setStringBuilder(new Kybidu().setParams(Vibemod.qyhozulor,{userName:this.userName}));
         this.fokododil.somaqu(Vibemod.zyha);
         this.fipofok(this.rif,this.fokododil);
         return;
      }

      private function pyfydigih() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rif.setStringBuilder(new Kybidu().setParams(Vibemod.lemop,{userName:this.userName}));
         this.fokododil.somaqu(Vibemod.jen);
         this.fipofok(this.rif,this.zycibo(),this.nenyha,this.zycibo(),this.fokododil);
         return;
      }

      private function fipofok(... rest) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:DisplayObject = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:DisplayObject = null;
         for each (_loc2_ in rest)
         {
            addChild(_loc2_);
         }
         _loc3_=0;
         _loc4_=rest.length;
         while(_loc4_--)
         {
            _loc5_=rest[_loc4_];
            _loc5_.x=_loc3_;
            _loc3_=_loc3_-_loc5_.width;
         }
         return;
      }
   }

}