package ferozosyf
{
[CLASS1054]   import __AS3__.vec.Vector;
   import daloraf.Dyge;
   import com.company.util.Sakejemu;
   import com.company.util.Nyr;
   import sowojotac.Gafo;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Hekuli extends Jogohyh
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hekuli(param1:GameObject, param2:Vector.<int>, param3:Player, param4:int=0) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:Dyge = null;
         super(param1,param3,param4);
         this.fynofive=new Vector.<Dyge>(ludizyry);
         var _loc5_:* = 0;
         while(_loc5_<ludizyry)
         {
            _loc6_=new Dyge(_loc5_,this,vaq);
            wozuvis(_loc6_,1,_loc5_);
            _loc6_.setType(param2[_loc5_]);
            this.fynofive[_loc5_]=_loc6_;
            _loc5_++;
         }
         return;
      }

      public static const ludizyry:uint = 4;

      private var fynofive:Vector.<Dyge>;

      public function vywycok() : Sakejemu {
         return new Nyr(Gafo.toArray(this.fynofive));
      }

      override public function setItems(param1:Vector.<int>, param2:int=0) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(param1)
         {
            _loc3_=param1.length;
            _loc4_=0;
            while(_loc4_<this.fynofive.length)
            {
               if(_loc4_+param2<_loc3_)
               {
                  this.fynofive[_loc4_].setItem(param1[_loc4_+param2]);
               }
               else
               {
                  this.fynofive[_loc4_].setItem(-1);
               }
               this.fynofive[_loc4_].updateDim(curPlayer);
               _loc4_++;
            }
         }
         return;
      }
   }
[/CLASS]
}