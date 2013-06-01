package ferozosyf
{
[CLASS564]   import __AS3__.vec.Vector;
   import daloraf.Cato;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Pele extends Jogohyh
   {
      public function Pele(param1:GameObject, param2:Player, param3:int=0, param4:Boolean=false) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:Cato = null;
         super(param1,param2,param3);
         this.fynofive=new Vector.<Cato>(this.ludizyry);
         this.fyjyz=param4;
         var _loc5_:* = 0;
         while(_loc5_<this.ludizyry)
         {
            _loc6_=new Cato(_loc5_+nivydyh,this,vaq);
            _loc6_.ryluf(_loc5_+1);
            wozuvis(_loc6_,2,_loc5_);
            this.fynofive[_loc5_]=_loc6_;
            _loc5_++;
         }
         return;
      }

      private const ludizyry:uint = 8;

      private var fynofive:Vector.<Cato>;

      private var fyjyz:Boolean;

      override public function setItems(param1:Vector.<int>, param2:int=0) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(param1)
         {
            _loc3_=false;
            _loc4_=param1.length;
            _loc5_=0;
            while(_loc5_<this.ludizyry)
            {
               if(_loc5_+nivydyh<_loc4_)
               {
                  if(this.fynofive[_loc5_].setItem(param1[_loc5_+nivydyh]))
                  {
                     _loc3_=true;
                  }
               }
               else
               {
                  if(this.fynofive[_loc5_].setItem(-1))
                  {
                     _loc3_=true;
                  }
               }
               _loc5_++;
            }
            if(_loc3_)
            {
               dotu();
            }
         }
         return;
      }
   }
[/CLASS]
}