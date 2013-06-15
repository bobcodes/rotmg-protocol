package bivecenym
{
   import mavew.Qyryl;
   import wohy.Caki;
   import hivysif.Liwyny;
   import com.company.assembleegameclient.ui.Kedilur;
   import flash.display.Bitmap;
   import jediwip.Vofezuzy;
   import copano.Myfely;


   public class Hupoma extends Qyryl
   {
      public function Hupoma(param1:Caki) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Liwyny = null;
         var _loc5_:Kedilur = null;
         var _loc2_:Bitmap = new Bitmap();
         _loc2_.bitmapData=param1.diry;
         _loc2_.scaleX=0.75;
         _loc2_.scaleY=0.75;
         _loc2_.y=5;
         addChild(_loc2_);
         _loc3_=new Liwyny();
         _loc3_.setSize(14).setBold(true).setColor(16777215);
         _loc3_.setStringBuilder(new Vofezuzy(param1.name));
         _loc3_.x=40;
         _loc3_.y=5;
         addChild(_loc3_);
         if(param1.guildName)
         {
            _loc5_=new Kedilur(param1.guildName,param1.qogaze);
            _loc5_.x=40;
            _loc5_.y=20;
            addChild(_loc5_);
         }
         super(3552822,0.5,16777215,1);
         var _loc4_:Myfely = new Myfely(null,param1.jek,null);
         _loc4_.x=5;
         _loc4_.y=_loc5_?_loc5_.y+_loc5_.height-5:55;
         _loc4_.setItems(param1.monyn);
         addChild(_loc4_);
         return;
      }
   }

}