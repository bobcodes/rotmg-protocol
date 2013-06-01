package nyvubeze
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.ui.Ses;
   import com.company.assembleegameclient.map.Wuwa;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Luvu;
   import tulunyno.Hugyqufyq;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Favequtu extends Menu
   {
      public function Favequtu(param1:Wuwa, param2:Vector.<Player>) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.sazuw=new Vector.<Ses>();
         super(3552822,16777215);
         this.map_=param1;
         this.focinidu=param2.concat();
         this.qatiqepuk=new Hugyqufyq();
         this.lejih();
         this.pezyda();
         return;
      }

      private var sazuw:Vector.<Ses>;

      private var tekojon:uint = 4;

      public var map_:Wuwa;

      public var focinidu:Vector.<Player>;

      public var sakupy:Wuzyq;

      public var segifa:Luvu;

      public var qatiqepuk:Hugyqufyq;

      private function pezyda() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Player = null;
         var _loc2_:Ses = null;
         for each (_loc1_ in this.focinidu)
         {
            _loc2_=new Ses(11776947,true,_loc1_);
            _loc2_.x=0;
            _loc2_.y=this.tekojon;
            addChild(_loc2_);
            this.sazuw.push(_loc2_);
            this.tekojon=this.tekojon+32;
         }
         return;
      }

      private function lejih() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.map_.allowPlayerTeleport_)
         {
            this.sakupy=new TeleportMenuOption(this.map_.player_);
            this.sakupy.x=8;
            this.sakupy.y=8;
            this.sakupy.addEventListener(MouseEvent.CLICK,this.qeqi);
            addChild(this.sakupy);
            this.segifa=new Luvu(150,1842204);
            this.segifa.x=6;
            this.segifa.y=40;
            addChild(this.segifa);
            this.tekojon=52;
         }
         return;
      }

      private function qeqi(param1:Event) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Player = null;
         var _loc2_:Player = this.map_.player_;
         var _loc3_:Player = null;
         for each (_loc4_ in this.focinidu)
         {
            if(_loc2_.milozanim(_loc4_))
            {
               _loc3_=_loc4_;
               break;
            }
         }
         if(_loc3_!=null)
         {
            _loc2_.piqu(_loc3_);
         }
         else
         {
            this.qatiqepuk.dispatch();
         }
         remove();
         return;
      }
   }

}