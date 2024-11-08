using System.Linq.Expressions;

namespace EFCore.Repositories.Interfaces
{
    public interface IRepository<TEntity> : IDisposable
        where TEntity : class
    {
        Task<List<TEntity>> GetAllAsync(bool tracked = true);

        Task<List<TEntity>> GetAsync(Expression<Func<TEntity, bool>>? filter = null, bool tracked = true);

        Task<TEntity?> GetByIdAsync(int id);

        void Add(TEntity entity);

        void AddMany(IEnumerable<TEntity> entities);

        void Update(TEntity entity);

        void Delete(TEntity entity);

        void DeleteMany(Expression<Func<TEntity, bool>> predicate);

        int SaveChanges();
    }
}
