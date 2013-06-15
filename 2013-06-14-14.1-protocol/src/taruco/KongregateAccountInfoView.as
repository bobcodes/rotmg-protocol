package taruco
{
   import flash.display.Sprite;
   import sefylew.Rut;
   import komi.Vibemod;
   import qykifavol.Rulavowaz;
   import hivysif.Guzowoja;
   import waryp.Nulejufyl;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import mukyrosu.Qanyduk;
   import jediwip.Kybidu;
   import flash.display.DisplayObject;


   public class KongregateAccountInfoView extends Sprite implements Rut
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function KongregateAccountInfoView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.pypa();
         this.rawasewom();
         return;
      }

      private static const pizym:String = Vibemod.zuriqer;

      private static const voquhubi:int = 18;

      private var qodysig:Rulavowaz;

      private var rif:Guzowoja;

      private var nenyha:Nulejufyl;

      private var userName:String = "";

      private var zuqic:Boolean;

      private function pypa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rif=new Guzowoja().setSize(voquhubi).setColor(11776947);
         this.rif.setAutoSize(TextFieldAutoSize.RIGHT);
         this.rif.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.rif);
         return;
      }

      private function rawasewom() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nenyha=new Nulejufyl(pizym,voquhubi,false);
         this.nenyha.setAutoSize(TextFieldAutoSize.RIGHT);
         this.qodysig=new Rulavowaz(this.nenyha,MouseEvent.CLICK);
         return;
      }

      public function zyfa(param1:String, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
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
            this.zutewyvog();
         }
         else
         {
            this.jyb();
         }
         return;
      }

      private function beluhivi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         while(numChildren)
         {
            removeChildAt(0);
         }
         return;
      }

      public function get register() : Qanyduk {
         return this.qodysig;
      }

      private function zutewyvog() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rif.setStringBuilder(new Kybidu().setParams(Vibemod.husevymogo,{userName:this.userName}));
         this.muz(this.rif);
         return;
      }

      private function jyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rif.setStringBuilder(new Kybidu().setParams(Vibemod.qyw));
         this.muz(this.rif,this.nenyha);
         this.rif.x=this.nenyha.getBounds(this).left;
         return;
      }

      private function muz(... rest) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:DisplayObject = null;
         var _loc2_:int = rest.length;
         while(_loc2_--)
         {
            _loc3_=rest[_loc2_];
            addChild(_loc3_);
         }
         return;
      }
   }

}