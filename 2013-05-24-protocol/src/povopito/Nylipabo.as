package povopito
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Ses;
   import movimet.Lufub;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;


   public class Nylipabo extends Ryduwi
   {
      public function Nylipabo(param1:Vector.<Player>, param2:Boolean=true) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.sazuw=new Vector.<Ses>();
         super(3552822,0.5,16777215,1,param2);
         this.goh=new Lufub().setSize(12).setColor(11776947);
         this.goh.setStringBuilder(new Sire().setParams(I18nKeys.tybopep));
         this.goh.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.goh);
         this.ducisigaq(param1);
         if(!param2)
         {
            filters=[];
         }
         jiguvovu.push(this.goh.textChanged);
         return;
      }

      public var focinidu:Vector.<Player> = null;

      private var sazuw:Vector.<Ses>;

      private var goh:Lufub;

      public function ducisigaq(param1:Vector.<Player>) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Player = null;
         var _loc4_:Ses = null;
         this.clear();
         this.focinidu=param1.slice();
         if(this.focinidu==null||this.focinidu.length==0)
         {
            return;
         }
         var _loc2_:* = 0;
         for each (_loc3_ in param1)
         {
            _loc4_=new Ses(11776947,true,_loc3_);
            _loc4_.x=0;
            _loc4_.y=_loc2_;
            addChild(_loc4_);
            this.sazuw.push(_loc4_);
            _loc2_=_loc2_+32;
         }
         this.goh.x=width/2-this.goh.width/2;
         this.goh.y=_loc2_;
         draw();
         return;
      }

      private function clear() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Ses = null;
         graphics.clear();
         for each (_loc1_ in this.sazuw)
         {
            removeChild(_loc1_);
         }
         this.sazuw.length=0;
         return;
      }
   }

}