export const fetchArticle = (id) => {
  return $.ajax({
    method: "GET",
    url: `/api/articles/${id}`
  });
};

export const updateArticle = (article) => {
  return $.ajax({
    method: "PATCH",
    url: `/api/articles/${article.id}`,
    data: { article }
  });
};

export const createArticle = () => {
  return $.ajax({
    method: "POST",
    url: `/api/articles`
  });
};

export const deleteArticle = (id) => {
  return $.ajax({
    method: "DELETE",
    url: `/api/articles/${id}`
  });
};

export const fetchHomepageArticles = () => {
  return $.ajax({
    method: "GET",
    url: `/api/articles`
  });
};

export const likeArticle = (id) => {
  return $.ajax({
    method: "POST",
    url: `/api/articles/${id}/like`
  });
};

export const unlikeArticle = (id) => {
  return $.ajax({
    method: "DELETE",
    url: `/api/articles/${id}/like`
  });
};

export const fetchArticlesForManager = () => {
  return $.ajax({
    method: "GET",
    url: `/api/articles/manage`
  });
};
