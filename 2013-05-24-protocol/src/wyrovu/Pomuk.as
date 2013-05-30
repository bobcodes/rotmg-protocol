package wyrovu
{
   import com.company.assembleegameclient.map.Wypyj;
   import com.company.assembleegameclient.objects.GameObject;


   public interface Pomuk
   {
      function draw(param1:Wypyj, param2:int) : Boolean;

      function dispose() : void;

      function fag() : GameObject;
   }

}