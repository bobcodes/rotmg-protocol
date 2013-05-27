package nukobi
{
   import flash.display.Sprite;
   import kat.Jyhyk;
   import aaa.rotmg.i18n.I18nKeys;
   import gyzesuqu.Zojygese;
   import movimet.Lufub;
   import sakugyt.Tiqigawul;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import tulunyno.Hugyqufyq;
   import nec.Sire;
   import flash.display.DisplayObject;


   public class KongregateAccountInfoView extends Sprite implements Jyhyk
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function KongregateAccountInfoView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.higyly();
         this.vekyso();
         return;
      }

      private static const ninyfoku:String = I18nKeys.rykip;

      private static const lacasoka:int = 18;

      private var nimawip:Zojygese;

      private var qubifowin:Lufub;

      private var daqiry:Tiqigawul;

      private var userName:String = "";

      private var bugi:Boolean;

      private function higyly() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qubifowin=new Lufub().setSize(lacasoka).setColor(11776947);
         this.qubifowin.setAutoSize(TextFieldAutoSize.RIGHT);
         this.qubifowin.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.qubifowin);
         return;
      }

      private function vekyso() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.daqiry=new Tiqigawul(ninyfoku,lacasoka,false);
         this.daqiry.setAutoSize(TextFieldAutoSize.RIGHT);
         this.nimawip=new Zojygese(this.daqiry,MouseEvent.CLICK);
         return;
      }

      public function tepefufe(param1:String, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userName=param1;
         this.bugi=param2;
         this.nunalibu();
         return;
      }

      private function nunalibu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lymib();
         if(this.bugi)
         {
            this.wyr();
         }
         else
         {
            this.hiko();
         }
         return;
      }

      private function lymib() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         while(numChildren)
         {
            removeChildAt(0);
         }
         return;
      }

      public function get register() : Hugyqufyq {
         return this.nimawip;
      }

      private function wyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qubifowin.setStringBuilder(new Sire().setParams(I18nKeys.rar,{userName:this.userName}));
         this.wireme(this.qubifowin);
         return;
      }

      private function hiko() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qubifowin.setStringBuilder(new Sire().setParams(I18nKeys.tiso));
         this.wireme(this.qubifowin,this.daqiry);
         this.qubifowin.x=this.daqiry.getBounds(this).left;
         return;
      }

      private function wireme(... rest) : void {
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