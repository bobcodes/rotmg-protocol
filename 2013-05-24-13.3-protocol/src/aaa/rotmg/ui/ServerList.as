package aaa.rotmg.ui
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;
   import aaa.rotmg.config.UserConfig;
   import aaa.rotmg.net.Server;
   import aaa.rotmg.ui.ServerBox;


   public class ServerList extends Sprite
   {
      public function ServerList(param1:Vector.<Server>) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:ServerBox = null;
         var _loc3_:* = 0;
         var _loc4_:Server = null;
         this.qygut=new Vector.<ServerBox>();
         super();
         _loc2_=new ServerBox(null);
         _loc2_.setSelected(true);
         _loc2_.x=ServerBox.WIDTH/2+2;
         _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addChild(_loc2_);
         this.qygut.push(_loc2_);
         _loc3_=2;
         for each (_loc4_ in param1)
         {
            _loc2_=new ServerBox(_loc4_);
            if(_loc4_.name==UserConfig.data_.preferredServer)
            {
               this.setSelected(_loc2_);
            }
            _loc2_.x=_loc3_%2*(ServerBox.WIDTH+4);
            _loc2_.y=int(_loc3_/2)*(ServerBox.HEIGHT+4);
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            addChild(_loc2_);
            this.qygut.push(_loc2_);
            _loc3_++;
         }
         return;
      }

      private var qygut:Vector.<ServerBox>;

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ServerBox = param1.target as ServerBox;
         this.setSelected(_loc2_);
         UserConfig.data_.preferredServer=_loc2_.value_;
         UserConfig.save();
         return;
      }

      private function setSelected(param1:ServerBox) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:ServerBox = null;
         for each (_loc2_ in this.qygut)
         {
            _loc2_.setSelected(false);
         }
         param1.setSelected(true);
         return;
      }
   }

}