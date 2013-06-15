package copano
{
   import __AS3__.vec.Vector;
   import loqaj.Voryt;
   import com.company.util.Vos;
   import com.company.util.Qukohibo;
   import bamozifaw.Byzuv;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Myfely extends Byz
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Myfely(param1:GameObject, param2:Vector.<int>, param3:Player, param4:int=0) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:Voryt = null;
         super(param1,param3,param4);
         this.hyzekop=new Vector.<Voryt>(vugoqupuq);
         var _loc5_:* = 0;
         while(_loc5_<vugoqupuq)
         {
            _loc6_=new Voryt(_loc5_,this,dymyd);
            ciboc(_loc6_,1,_loc5_);
            _loc6_.setType(param2[_loc5_]);
            this.hyzekop[_loc5_]=_loc6_;
            _loc5_++;
         }
         return;
      }

      public static const vugoqupuq:uint = 4;

      private var hyzekop:Vector.<Voryt>;

      public function towapaso() : Vos {
         return new Qukohibo(Byzuv.toArray(this.hyzekop));
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
            while(_loc4_<this.hyzekop.length)
            {
               if(_loc4_+param2<_loc3_)
               {
                  this.hyzekop[_loc4_].setItem(param1[_loc4_+param2]);
               }
               else
               {
                  this.hyzekop[_loc4_].setItem(-1);
               }
               this.hyzekop[_loc4_].updateDim(curPlayer);
               _loc4_++;
            }
         }
         return;
      }
   }

}