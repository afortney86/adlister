package daos;

/**
 * Created by anthonyfortney on 12/14/16.
 */
public class DaoFactory {

    public static Users userDao() {
        return new ArrayListUsers();

    }
}
